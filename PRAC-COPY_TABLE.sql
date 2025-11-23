USE Mangata_Gallo;
CREATE TABLE Stafftest
SELECT * FROM Staff;
SHOW COLUMNS FROM Stafftest;
CREATE TABLE Mangata_Gallo.employeetest
SELECT * FROM 
luckyshrub_db.orders;
SHOW COLUMNS FROM employeetest;
SELECT * FROM employeetest;
CREATE TABLE employeetest2
SELECT OrderID,ClientID,Quantity
FROM employeetest WHERE Quantity=10;
SELECT * FROM employeetest2;
INSERT INTO employeetest2 SELECT * FROM employeetest;
CREATE TABLE stafftest3 like Staff;
DROP TABLE Stafftest;
DROP TABLE employeetest
