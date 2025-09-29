-- Task 5: SQL Joins (Inner, Left, Right, Full)

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert data
INSERT INTO Customers VALUES (1, 'Alice', 'USA');
INSERT INTO Customers VALUES (2, 'Anna', 'Canada');
INSERT INTO Customers VALUES (3, 'Charlie', 'Germany');
INSERT INTO Customers VALUES (4, 'Dia', 'India');
INSERT INTO Customers VALUES (5, 'Amy', 'UK');
INSERT INTO Customers VALUES (6, 'Kim', 'Korea');

INSERT INTO Orders VALUES (101, '2024-11-10', 1, 250.00);
INSERT INTO Orders VALUES (102, '2022-12-12', 2, 400.00);
INSERT INTO Orders VALUES (103, '2023-02-01', 1, 1500.00);
INSERT INTO Orders VALUES (104, '2021-02-15', 3, 555.00);
INSERT INTO Orders VALUES (105, '2021-05-15', 5, 2059.00);
INSERT INTO Orders VALUES (106, '2021-11-15', 2, 299.00);



-- 1. INNER JOIN
SELECT C.CustomerName, O.OrderID, O.Amount
FROM Customers C
INNER JOIN Orders O ON C.CustomerID = O.CustomerID;

-- 2. LEFT JOIN
SELECT C.CustomerName, O.OrderID, O.Amount
FROM Customers C
LEFT JOIN Orders O ON C.CustomerID = O.CustomerID;

-- 3. RIGHT JOIN
SELECT C.CustomerName, O.OrderID, O.Amount
FROM Customers C
RIGHT JOIN Orders O ON C.CustomerID = O.CustomerID;

-- 4. FULL OUTER JOIN
SELECT C.CustomerName, O.OrderID, O.Amount
FROM Customers C
FULL OUTER JOIN Orders O ON C.CustomerID = O.CustomerID;
