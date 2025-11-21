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

        input logic [0:ARRAY_COLS - 1][31:0] iacts_in,
        input logic [0:ARRAY_ROWS - 1][15:0] weights_in,

        output logic [0:ARRAY_ROWS - 1][47:0] psums_out,
        
        output logic [31:0] weight_addr, // requesting address to block ram 
        output logic [31:0] iact_addr [0:ARRAY_COLS - 1],
        output logic [31:0] psum_addr [0:ARRAY_ROWS - 1],
        output logic load_weight,
        output logic load_iact [0:ARRAY_COLS - 1],
        output logic psum_valid [0:ARRAY_ROWS - 1], // store psum
        
        output logic done
    );

    localparam COMPUTE_CYCLES = ARRAY_ROWS + ARRAY_ROWS + ARRAY_COLS; // iact_cols + ARRAY_ROWS + ARRAY_COLS
    localparam LOAD_WEIGHT_CYCLES = ARRAY_COLS; // weight_cols 
    
    logic [$clog2(LOAD_WEIGHT_CYCLES) - 1:0] load_weight_cycle_cnt;
    logic load_weight_cycle_cnt_en;
    logic [$clog2(COMPUTE_CYCLES) - 1:0] compute_cycle_cnt;

    logic pe_load_weight; // pretty sure this can't be the same as the bram load_weight

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

    pe_array #(
        .ROWS(ARRAY_ROWS),
        .COLS(ARRAY_COLS)
    ) array (
        .clk(clk),
        .iacts(iacts_in),
        .weights(weights_in),
        .load_weight(pe_load_weight),
        .psums(psums_out)
    );
    
    always_comb begin
        next_state = state;

        load_weight = 'b0;
        for(int i = 0; i < ARRAY_COLS; ++i) begin
            load_iact[i] = 'b0;
        end
        psum_valid = 'b0;
        
        load_weight_cycle_cnt_en = 1'b0;
        done = 1'b0;

        case(state)
            IDLE: begin
                if (go) begin
                    next_state = LOAD_WEIGHTS;
                end
            end
            LOAD_WEIGHTS: begin
                load_weight_cycle_cnt_en = 1'b1;
                if (load_weight_cycle_cnt == LOAD_WEIGHT_CYCLES) begin
                    next_state = COMPUTE; // probably COMPUTE right?
                end
                else begin
                    next_state = LOAD_WEIGHTS;
                    load_weight = 1'b1;
                end
            end
            COMPUTE: begin
                // col input valid if: col <= counter < col + iact_cols
                for(int i = 0; i < ARRAY_COLS; ++i) begin
                    load_iact[i] = i <= compute_cycle_cnt && compute_cycle_cnt < i + ARRAY_ROWS;
                end

                // row output valid if: row + ARRAY_COLS <= counter < row + iact_cols + ARRAY_COLS
                for(int i = 0; i < ARRAY_ROWS; ++i) begin
                    psum_valid[i] = i + ARRAY_COLS <= compute_cycle_cnt && compute_cycle_cnt < i + ARRAY_ROWS + ARRAY_COLS;
                end

                if(compute_cycle_cnt == COMPUTE_CYCLES) begin
                    next_state = DONE;
                end
            end
            DONE: begin
                done = 1'b1;
                next_state = IDLE;
            end
            default: begin
                next_state <= IDLE;
            end
        endcase
    end

    always_ff @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            load_weight_cycle_cnt <= 'h0;
            compute_cycle_cnt <= 'b0;
        end else if (load_weight_cnt_en) begin
            load_weight_cycle_cnt <= load_weight_cycle_cnt + 'h1;
            weight_addr <= weight_addr + ;//whateveer stride we have;
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