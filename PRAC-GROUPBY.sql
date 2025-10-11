USE luckyshrub_db;
SELECT ProductID FROM orders GROUP BY `ProductID`;
SELECT ProductID, COUNT(`ProductID`) from orders GROUP BY `ProductID`;
SELECT * FROM orders;
SELECT ProductID, SUM(Cost) FROM orders GROUP BY `ProductID`;
SELECT ProductID, MIN(`Quantity`) FROM orders GROUP BY `ProductID`;
SELECT ProductID, AVG(Cost) FROM orders GROUP BY `ProductID`;