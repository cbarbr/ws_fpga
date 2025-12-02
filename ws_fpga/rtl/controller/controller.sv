`ifndef CONTROLLER
    `define CONTROLLER

    module controller #(
        parameter ARRAY_ROWS = 3,
        parameter ARRAY_COLS = 3
    )(
        input clk,
        input rst_n,
        input go,

        /* for now assume pe array is the same size as the input matrices
        input [7:0] iact_rows, iact_cols,
        input [7:0] weight_rows, weight_cols,
        */
        
        output logic [31:0] weight_addr, // requesting address to block ram 
        output logic [0:ARRAY_COLS - 1] [31:0] iact_addr,
        output logic [0:ARRAY_ROWS - 1] [31:0] psum_addr,
        output logic load_weight,
        output logic [0:ARRAY_COLS - 1] load_iact,
        output logic [0:ARRAY_ROWS - 1] psum_valid, // store psum
        
        output logic done
    );

    localparam COMPUTE_CYCLES = ARRAY_ROWS + ARRAY_ROWS + ARRAY_COLS; // iact_cols + ARRAY_ROWS + ARRAY_COLS
    localparam LOAD_WEIGHT_CYCLES = ARRAY_COLS;
    
    logic [$clog2(LOAD_WEIGHT_CYCLES + 1) - 1:0] load_weight_cycle_cnt;
    logic load_weight_cycle_cnt_en;
    logic [$clog2(COMPUTE_CYCLES + 1) - 1:0] compute_cycle_cnt;
    
    logic go_reg_0;
    logic go_reg_1;
    logic go_re;
    
    always_ff @(posedge clk) begin
        go_reg_0 <= go;
        go_reg_1 <= go_reg_0;
    end
    
    assign go_re = go_reg_0 && (!go_reg_1);

    typedef enum {
        IDLE,         // neutral state of controller
        LOAD_WEIGHTS, // reading weights from block ram 
        COMPUTE,      // seperate stages for rows(output valid/invalid) and cols(input valid/invalid)
                      // stage depends on row/col number and compute stage cycle count
        DONE          // all valid output has beed read, raise done signal and go back to idle
    } state_t;

    state_t state, next_state;
    
    always_ff @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
        end
        else begin
            state <= next_state;
        end
    end
    
    always_comb begin
        next_state = state;

        load_weight = 'b0;
        for(int i = 0; i < ARRAY_COLS; ++i) begin
            load_iact[i] = 'b0;
        end
        for(int i = 0; i < ARRAY_COLS; ++i) begin
            psum_valid[i] = 'b0;
        end

        
        load_weight_cycle_cnt_en = 1'b0;
        done = 1'b0;

        case(state)
            IDLE: begin
                if (go_re) begin
                    next_state = LOAD_WEIGHTS;
                end
            end
            LOAD_WEIGHTS: begin
                load_weight_cycle_cnt_en = 1'b1;
                load_weight = 1'b1;
                if (load_weight_cycle_cnt == LOAD_WEIGHT_CYCLES) begin
                    next_state = COMPUTE; // probably COMPUTE right?
                end
                else begin
                    next_state = LOAD_WEIGHTS;
                end
            end
            COMPUTE: begin
                // col input valid if: col <= counter < col + iact_cols
                for(int i = 0; i < ARRAY_COLS; ++i) begin
                    load_iact[i] = i <= compute_cycle_cnt && compute_cycle_cnt < i + ARRAY_ROWS;
                    /*
                    the statement above does:
                    if compute_cycle_cnt = 0 
                        load iact [1,0,0]
                    else if compute_cycle_cnt = 1 
                        load iact [1,1,0]
                    else if compute_cycle_cnt = 2 
                        load iact [1,1,1]
                    else if compute_cycle_cnt = 3
                        load iact [0,1,1]
                    else if compute_cycle_cnt = 4
                        load iact [0,0,1]
                    */
                end

                // row output valid if: 1 + row + ARRAY_COLS <= counter < 1 + row + iact_cols + ARRAY_COLS
                for(int i = 0; i < ARRAY_ROWS; ++i) begin
                    psum_valid[i] = 2 + i + ARRAY_COLS <= compute_cycle_cnt && compute_cycle_cnt < 2 + i + ARRAY_ROWS + ARRAY_COLS;
                    /*
                    the statement above does the same as:
                    if compute_cycle_cnt = 0 
                        psum valid [0,0,0]
                    else if compute_cycle_cnt = 1
                        psum valid [0,0,0]
                    else if compute_cycle_cnt = 2
                        psum valid [0,0,0]
                    else if compute_cycle_cnt = 3
                        psum valid [1,0,0]
                    else if compute_cycle_cnt = 4
                        psum valid [1,1,0]
                    else if compute_cycle_cnt = 5
                        psum valid [1,1,1]
                    else if compute_cycle_cnt = 6
                        psum valid [0,1,1]
                    else if compute_cycle_cnt = 7
                        psum valid [0,0,1]
                    else 
                        psum valid [0,0,0]
                    */
                end

                if(compute_cycle_cnt == COMPUTE_CYCLES) begin
                    next_state = DONE;
                end
            end
            DONE: begin
                done = 1'b1;
                if(go_re) begin
                    next_state = LOAD_WEIGHTS;
                end else begin
                    next_state = DONE;
                end
            end
            default: begin
                next_state = IDLE;
            end
        endcase
    end

    always_ff @(posedge clk, negedge rst_n) begin
        if (!rst_n || go_re) begin
            load_weight_cycle_cnt <= 'h0;
            compute_cycle_cnt <= 'b0;
            weight_addr <= 'h0;
            iact_addr <= 'h0;
            psum_addr <= 'h0;
        end else if (load_weight_cycle_cnt_en) begin
            load_weight_cycle_cnt <= load_weight_cycle_cnt + 'h1;
            weight_addr <= weight_addr + 1'b1;//whateveer stride we have;
        end else if(state == COMPUTE) begin
            compute_cycle_cnt <= compute_cycle_cnt + 'h1;
            for(int i = 0; i < ARRAY_COLS; ++i) begin
                if(load_iact[i]) begin 
                    iact_addr[i] <= iact_addr[i] + 1'b1; //whatever stride we have
                end
            end
            for(int i = 0; i < ARRAY_ROWS; ++i) begin
                if(psum_valid[i]) begin 
                    psum_addr[i] <= psum_addr[i] + 1'b1; //whatever stride we have
                end
            end
        end else if(state == DONE) begin
            compute_cycle_cnt <= 'b0;
            load_weight_cycle_cnt <= 'b0;
        end
    end

    endmodule : controller
`endif
