-- Create Indexes for better query performance
USE SpendingTrackerDB;
CREATE INDEX IX_Transactions_UserId ON Transactions(UserId);
CREATE INDEX IX_Transactions_Date ON Transactions(TransactionDate);
CREATE INDEX IX_Transactions_Category ON Transactions(CategoryId);
CREATE INDEX IX_Budgets_UserId ON Budgets(UserId);