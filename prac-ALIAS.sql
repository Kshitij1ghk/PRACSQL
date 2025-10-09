SELECT CONCAT (first_name,"",last_name) AS client_name
FROM client_details;
USE luckyshrub_db;
SELECT Department AS X 
FROM employees;
SELECT CONCAT(Department,':',Email) AS X
FROM employees;
SELECT X.Department,X.Email
FROM employees AS x
WHERE X.Email='Thomas.e@ luckyshrub.com'-- it only prints one row since database first filters row usignwhere clause and then uses select statements


