# PRACSQL
# SQL ALIASES
- used to provide temporary distinct names within the database for ease of use and understand
- used to shorten the name or simplify of tables or columns
- Combine an output into one column instead of two using a concatenation function.

# JOINS
## INNER JOIN
- This type of JOIN returns records of data that have matching values in the joined tables. For example, assume that you want to return the full name and booking ID of customers who made bookings. In this situation, you can use the INNER JOIN clause to extract records of data from the Customers and the Bookings tables based on the matching customer ID value as follows.

## LEFT JOIN
- The LEFT JOIN returns all common records in a similar way to the INNER JOIN, plus all queried records from the left table regardless of whether there is a match in the right table or not. If there are no matching records in the right table, then null values will be inserted for the bookings IDs. 

## RIGHT JOIN
- The RIGHT JOIN returns all common records in a similar way to the INNER JOIN, plus all queried records from the right table regardless of whether there is a match in the left table or not. If there are no matching records in the left table, then null values will be inserted for the customers full names.

## SELF JOIN
- This is a special case where you need to join a table with itself to get specific information existing in the same table.  In this case you may choose the INNER JOIN, LEFT JOIN or RIGHT JOIN presented earlier to query the required data. 

# UNION OPERATOR
-  you can use UNION operator to join two SELECT statements in order to combine their results sets and present as one table.
- few best practices that must be observed when creating SQL SELECT statements with a UNION operator. Every SELECT statement must have the same number of columns. All related columns have similar data types, and all related columns must have the same order in every SELECT statement-

# LAB 1
- Task 1: Little Lemon want a list of all customers who have made bookings. Write an INNER JOIN SQL statement to combine the full name and the phone number of each customer from the Customers table with the related booking date and 'number of guests' from the Bookings table.
- Little Lemon want to view information about all existing customers with bookings that have been made so far. This data must include customers who haven’t made any booking yet. 

Write a LEFT JOIN SQL statement to view the customer id from Customers table and the related booking id from the Bookings table. The expected output result should be the same as the following screenshot