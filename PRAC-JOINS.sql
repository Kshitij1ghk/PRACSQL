CREATE DATABASE lemon_restraunt;
USE lemon_restraunt;
-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(255),
    PhoneNumber VARCHAR(20)
);

-- Insert data into the Customers table
INSERT INTO Customers (CustomerID, FullName, PhoneNumber) VALUES
(1, 'Vanessa McCarthy', '757536378'),
(2, 'Marcos Romero', '757536379'),
(3, 'Hiroki Yamane', '757536376'),
(4, 'Anna Iversen', '757536375'),
(5, 'Diana Pinto', '757536374');
-- Create the Bookings table
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    BookingDate DATE,
    TableNumber INT,
    NumberOfGuests INT,
    CustomerID INT
);

-- Insert data into the Bookings table
INSERT INTO Bookings (BookingID, BookingDate, TableNumber, NumberOfGuests, CustomerID) VALUES
(10, '2021-11-11', 7, 5, 1),
(11, '2021-11-10', 5, 2, 2),
(12, '2021-11-10', 3, 2, 4);

-- INNER JOIN that is only include results where customer is present in both lists4
SELECT * FROM Customers;
SELECT * FROM Bookings;
SELECT Customers.Fullname,Bookings.BookingID
FROM Customers INNER JOIN Bookings
ON Customers.CustomerID=Bookings.CustomerID;
-- left join returns all values form left table even if its null
SELECT Customers.Fullname,Bookings.BookingID
FROM Customers LEFT JOIN Bookings
ON Customers.CustomerID=Bookings.CustomerID;

-- RIGHT JOIN 
SELECT Customers.Fullname,Bookings.BookingID
FROM Customers right JOIN Bookings
ON Customers.CustomerID=Bookings.CustomerID;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FullName VARCHAR(255),
    JobTitle VARCHAR(100),
    County VARCHAR(100),
    LineManagerID INT
);
INSERT INTO Employees (EmployeeID, FullName, JobTitle, County, LineManagerID)
VALUES
(1, 'Seamus Hogan', 'Manager', 'Pinal County', 3),
(2, 'Thomas Eriksson', 'Assistant', 'Pinal County', 1),
(3, 'Simon Tolo', 'Head Chef', 'Gila County', 3),
(4, 'Francesca Soffia', 'Assistant', 'Cochise County', 1),
(5, 'Emily Sierra', 'Accountant', 'Cochise County', 1),
(6, 'Greta Galkina', 'Accountant', 'Cochise County', 3);

SELECT e1.FullName as 'LINE MANAGER',e2.FullName AS 'Employee' FROM Employees AS e1 INNER
JOIN Employees AS e2 ON e1.EmployeeID=e2.LineManagerID -- the output results set links the line managers with the employees they manage
