CREATE DATABASE ProductsDB;
GO

USE ProductsDB;
GO

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(255) NOT NULL
);

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName VARCHAR(255) NOT NULL
);

CREATE TABLE ProductCategories (
    ProductID INT,
    CategoryID INT,
    PRIMARY KEY (ProductID, CategoryID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

INSERT INTO Products (ProductName) VALUES
('Молоко'),
('Хлеб'),
('Сыр'),
('Яблоки'),
('Бананы'),
'Курица';

INSERT INTO Categories (CategoryName) VALUES
('Молочные продукты'),
('Хлебобулочные изделия'),
('Фрукты');

INSERT INTO ProductCategories (ProductID, CategoryID) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 3),
(5, 3);

SELECT p.ProductName, c.CategoryName
FROM Products p
LEFT JOIN ProductCategories pc ON p.ProductID = pc.ProductID
LEFT JOIN Categories c ON pc.CategoryID = c.CategoryID; 