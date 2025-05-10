CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);
INSERT INTO Employees (FirstName, LastName, Department, Salary, HireDate)
VALUES 
('Alice', 'Smith', 'HR', 60000, '2020-05-01'),
('Bob', 'Johnson', 'Engineering', 85000, '2019-03-15'),
('Charlie', 'Lee', 'Engineering', 95000, '2018-07-30'),
('Diana', 'Brown', 'Marketing', 72000, '2021-11-20');

CREATE VIEW vw_EmployeeFullNames AS
SELECT 
    EmployeeID,
    FirstName + ' ' + LastName AS FullName,
    Department,
    Salary
FROM Employees;

CREATE VIEW vw_EngineeringEmployees AS
SELECT *
FROM Employees
WHERE Department = 'Engineering';

CREATE VIEW vw_HighEarners AS
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Salary > 80000;

SELECT * FROM vw_EmployeeFullNames;

SELECT * FROM vw_HighEarners;
