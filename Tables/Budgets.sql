-- Budgets Table
USE SpendingTrackerDB;
CREATE TABLE Budgets (
    BudgetId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    CategoryId INT NOT NULL,
    MonthlyLimit DECIMAL(18,2) NOT NULL,
    Month INT NOT NULL, -- 1-12
    Year INT NOT NULL,
    IsActive BIT DEFAULT 1,
    CreatedAt DATETIME2 DEFAULT GETUTCDATE(),
    FOREIGN KEY (UserId) REFERENCES Users(UserId) ON DELETE CASCADE,
    FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId),
    CONSTRAINT UQ_Budget_User_Category_Month UNIQUE (UserId, CategoryId, Month, Year)
);