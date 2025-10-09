use luckyshrub_db;
-- Create the Clients table
CREATE TABLE Clients (
    ClientID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(255),
    ContactNumber VARCHAR(20),
    Address VARCHAR(255)
);

-- Insert data into the Clients table
INSERT INTO Clients (ClientID, FullName, ContactNumber, Address) VALUES
('Cl1', 'Takashi Ito', '351786345', '724 Greenway Drive'),
('Cl2', 'Jane Murphy', '351567243', '102 Sycamore Lane'),
('Cl3', 'Laurina Delgado', '351342597', '291 Oak Wood Avenue'),
('Cl4', 'Benjamin Clauss', '351342509', '831 Beechwood Terrace'),
('Cl5', 'Altay Ayhan', '351208983', '755 Palm Tree Hills'),
('Cl6', 'Greta Galkina', '351298755', '831 Beechwood Terrace');
-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ClientID VARCHAR(10),
    ProductID VARCHAR(10),
    Quantity INT,
    Cost DECIMAL(10, 2)
);

-- Insert data into the Orders table
INSERT INTO Orders (OrderID, ClientID, ProductID, Quantity, Cost) VALUES
(1, 'Cl1', 'P1', 10, 500.00),
(2, 'Cl2', 'P2', 5, 100.00),
(3, 'Cl3', 'P3', 20, 800.00),
(4, 'Cl4', 'P4', 15, 150.00),
(5, 'Cl3', 'P3', 10, 450.00),
(6, 'Cl2', 'P2', 5, 800.00),
(7, 'Cl1', 'P4', 22, 1200.00);
SELECT Clients.FullName,Orders.OrderID
FROM Clients INNER JOIN Orders
ON Clients.ClientID=Orders.ClientID;
-- using aliqases 
SELECT Clients.ClientID, Clients.FullName AS 'Complete NAME',Clients.ContactNumber AS 'Phone number',Orders.OrderID
FROM Clients INNER JOIN Orders
ON Clients.ClientID=Orders.ClientID;

SELECT Clients.ClientID, Clients.FullName AS 'Complete NAME',Clients.ContactNumber AS 'Phone number',Orders.OrderID
FROM Clients LEFT JOIN Orders
ON Clients.ClientID=Orders.ClientID;

-- LEFT JOINorder's id USING ALIASES
SELECT c.ClientID AS 'Client ID',c.FUllName AS 'FULL NAME' ,o.OrderID AS 'ORDER''s'' ID',o.Quantity AS 'QUANTITY',o.cost
FROM Clients AS c LEFT JOIN Orders AS o ON c.ClientID=o.ClientID;
-- same for righ join
SELECT * FROM employees;
-- applying self join
ALTER TABLE employees
ADD LineManagerID INT;