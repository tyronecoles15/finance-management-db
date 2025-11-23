-- Transactions Table
USE SpendingTrackerDB;
CREATE TABLE Transactions (
    TransactionId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    CategoryId INT NOT NULL,
    Amount DECIMAL(18,2) NOT NULL,
    Description NVARCHAR(500),
    TransactionDate DATE NOT NULL,
    CreatedAt DATETIME2 DEFAULT GETUTCDATE(),
    FOREIGN KEY (UserId) REFERENCES Users(UserId) ON DELETE CASCADE,
    FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId)
);