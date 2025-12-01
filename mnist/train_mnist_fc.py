import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader
from torchvision import datasets, transforms


# ------------------------
# Model: 784 -> 10 (FC)
# ------------------------
class MNIST_FC(nn.Module):
    def __init__(self):
        super().__init__()
        self.fc = nn.Linear(784, 10)

    def forward(self, x):
        x = x.view(-1, 784)
        return self.fc(x)


def main():
    # ------------------------
    # Hyperparams
    # ------------------------
    batch_size = 128
    lr = 1e-3
    epochs = 5   # you can bump to 10+ if you want

    # ------------------------
    # Data (downloads MNIST once)
    # ------------------------
    transform = transforms.Compose([
        transforms.ToTensor(),  # [0,1]
    ])

    train_dataset = datasets.MNIST(
        root="./data",
        train=True,
        download=True,
        transform=transform,
    )
    test_dataset = datasets.MNIST(
        root="./data",
        train=False,
        download=True,
        transform=transform,
    )

    train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True)
    test_loader  = DataLoader(test_dataset,  batch_size=batch_size, shuffle=False)

    # ------------------------
    # Model / optimizer / loss
    # ------------------------
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    model = MNIST_FC().to(device)
    optimizer = optim.Adam(model.parameters(), lr=lr)
    criterion = nn.CrossEntropyLoss()

    # ------------------------
    # Training loop
    # ------------------------
    for epoch in range(1, epochs + 1):
        model.train()
        running_loss = 0.0
        for x, y in train_loader:
            x, y = x.to(device), y.to(device)

            optimizer.zero_grad()
            logits = model(x)
            loss = criterion(logits, y)
            loss.backward()
            optimizer.step()

            running_loss += loss.item() * x.size(0)

        avg_loss = running_loss / len(train_loader.dataset)

        # quick eval
        model.eval()
        correct = 0
        total = 0
        with torch.no_grad():
            for x, y in test_loader:
                x, y = x.to(device), y.to(device)
                logits = model(x)
                preds = logits.argmax(dim=1)
                correct += (preds == y).sum().item()
                total += y.size(0)
        acc = correct / total

        print(f"Epoch {epoch}/{epochs}  loss={avg_loss:.4f}  test_acc={acc*100:.2f}%")

    # ------------------------
    # Save weights
    # ------------------------
    torch.save(model.state_dict(), "mnist_fc.pth")
    print("Saved model to mnist_fc.pth")


if __name__ == "__main__":
    main()
