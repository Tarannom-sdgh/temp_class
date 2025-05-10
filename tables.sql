CREATE TABLE Orders ( 
OrderID INT PRIMARY KEY IDENTITY(1,1), 
CustomerName NVARCHAR(100), 
ProductName NVARCHAR(100), 
Quantity INT, 
Price DECIMAL(10, 2), 
OrderDate DATE 
);

INSERT INTO Orders (CustomerName, ProductName, Quantity, Price, OrderDate)
VALUES 
('Alice', 'Laptop', 1, 1200.00, '2023-10-01'),
('Bob', 'Phone', 2, 800.00, '2023-11-15'),
('Charlie', 'Monitor', 1, 300.00, '2023-11-20'),
('Alice', 'Mouse', 3, 25.00, '2023-12-01'),
('Diana', 'Keyboard', 2, 45.00, '2024-01-05'),
('Eve', 'Laptop', 1, 1300.00, '2024-01-10'),
('Bob', 'Headphones', 2, 150.00, '2024-02-01'),
('Alice', 'Webcam', 1, 75.00, '2024-02-15'),
('Charlie', 'Mouse', 2, 25.00, '2024-03-01'),
('Diana', 'Monitor', 1, 310.00, '2024-03-15');

Select * FROM Orders;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50)
);

-- Insert sample data
INSERT INTO Employees (EmployeeID, FirstName, LastName)
VALUES (1, 'John', 'Doe'), (2, 'Jane', 'Smith');

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100),
    UnitPrice DECIMAL(10, 2)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    CustomerName NVARCHAR(100),
    Email NVARCHAR(100)
);

CREATE TABLE Products2 (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100),
    UnitPrice DECIMAL(10, 2)
);

CREATE TABLE Orders2 (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
    Quantity INT,
    OrderDate DATE
);

INSERT INTO Customers (CustomerName, Email)
VALUES ('Alice', 'alice@example.com'),
       ('Bob', 'bob@example.com');

INSERT INTO Products2 (ProductName, UnitPrice)
VALUES ('Laptop', 1200), ('Mouse', 25), ('Monitor', 300);

INSERT INTO Orders (CustomerID, ProductID, Quantity, OrderDate)
VALUES 
(1, 1, 1, '2024-04-01'), 
(1, 2, 3, '2024-04-05'), 
(2, 3, 2, '2024-04-10');

