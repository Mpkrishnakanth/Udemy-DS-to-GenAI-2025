create database sqljoins;
use sqljoins;
show tables;

CREATE TABLE Customers(
CustomerID int NOT NULL,
CustomerName varchar(50),
ContactName varchar(50),
Address varchar(70),
City varchar(30),
PostalCode int,
Country varchar(30),
PRIMARY KEY (CustomerID)
);

DROP TABLE Orders;

CREATE TABLE Orders(
OrderID int NOT NULL,
CustomerID int,
EmployeeID int,
OrderDate DATE,
ShipperID int,
PRIMARY KEY (OrderID)
);

INSERT INTO Customers VALUES(111, 'Preethi', 'Preethi', 'Nandyal', 'Nand', 500029, 'INDIA');
INSERT INTO Customers VALUES(222, 'Krishna', 'Krishna', 'Vizag', 'VTZ', 530021, 'INDIA');
INSERT INTO Customers VALUES(333, 'Rajini', 'Rajini', 'Texas', 'Texas', 501029, 'USA');
INSERT INTO Customers VALUES(444, 'Lakshmi Kanth', 'Lakshmi Kanth', 'Nandyal', 'Nand', 500029, 'INDIA');
INSERT INTO Customers VALUES(555, 'Sugunakar', 'Sugunakar', 'Vizag', 'VTZ', 530029, 'INDIA');
INSERT INTO Customers VALUES(666, 'Krishna', 'Krishna', 'Nandyal', 'Nand', 500029, 'INDIA');
INSERT INTO Customers VALUES(777, 'Bhavesh', 'Bhavesh', 'Nandyal', 'Nand', 500029, 'INDIA');
INSERT INTO Customers VALUES(888, 'Sujatha', 'Sujatha', 'Vizag', 'VTZ', 510029, 'INDIA');

INSERT INTO Orders Values (001,111,2, sysdate(), 92801);
INSERT INTO Orders Values (002,222,3, sysdate()-40, 92801);
INSERT INTO Orders Values (003,444,4, sysdate()-11, 92801);
INSERT INTO Orders Values (004,666,5, sysdate()-12, 92801);
INSERT INTO Orders Values (005,333,6, sysdate()-30, 92801);

SELECT * FROM Customers;
SELECT * FROM Orders;

-- LEFT JOIN

SELECT c.CustomerName, c.Address, c.PostalCode,o.OrderID, o.OrderDate
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID;

-- RIGHT JOIN
SELECT c.CustomerName, c.Address, c.PostalCode,o.OrderID, o.OrderDate
FROM Customers c RIGHT JOIN Orders o
ON c.CustomerID = o.CustomerID;

-- INNER JOIN
SELECT c.CustomerName, c.Address, c.PostalCode,o.OrderID, o.OrderDate
FROM Customers c INNER JOIN Orders o
ON c.CustomerID = o.CustomerID;

-- Full Outer Join since we dont have outerjoin in MySQL

SELECT c.CustomerName, c.Address, c.PostalCode,o.OrderID, o.OrderDate
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
UNION
SELECT c.CustomerName, c.Address, c.PostalCode,o.OrderID, o.OrderDate
FROM Customers c RIGHT JOIN Orders o
ON c.CustomerID = o.CustomerID;
 
-- CROSS JOINS
SELECT c.CustomerName, c.Address, c.PostalCode,o.OrderID, o.OrderDate
FROM Customers c CROSS JOIN Orders o
ON c.CustomerID = o.CustomerID;