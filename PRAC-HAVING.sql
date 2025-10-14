SELECT ProductID, COUNT(`ProductID`) from orders GROUP BY `ProductID` HAVING ProductID='P1';
SELECT ProductID FROM orders GROUP BY `ProductID` HAVING AVG(Cost)>500;
SELECT * FROM orders;
SELECT ProductID FROM orders group by ProductID HAVING SUM(Cost)>1000;
SELECT Department, SUM(OrderTotal) FROM orders GROUP BY Department HAVING SUM(OrderTotal)>2275;


