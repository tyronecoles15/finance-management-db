-- Categories Table
USE SpendingTrackerDB;
CREATE TABLE Categories (
    CategoryId INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Icon NVARCHAR(50),
    ColorCode NVARCHAR(7), -- Hex color code
    IsDefault BIT DEFAULT 1,
    UserId INT NULL,
    FOREIGN KEY (UserId) REFERENCES Users(UserId) ON DELETE CASCADE
);