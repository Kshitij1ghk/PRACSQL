USE luckyshrub_db;
SELECT * FROM orders;
REPLACE INTO orders(OrderID,ClientID,ProductID,Quantity,Cost)
VALUES(9,"Cl1", "P1", 10,5000);
REPLACE INTO orders(OrderID,ClientID,ProductID,Quantity,Cost)
VALUES(10,"Cl2", "P2", 5,100);
REPLACE INTO orders(OrderID,ClientID,ProductID,Quantity,Cost)
VALUES(9,"Cl1", "P1", 10,500);