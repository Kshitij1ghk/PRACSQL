USE luckyshrub_db1;
SELECT * FROM employees;
REPLACE INTO employees 
SET EmployeeID=2, EmployeeName='Kshitij',Department='Information Technology';
-- WHat replace does i
REPLACE INTO
employees(EmployeeName,Department)
SELECT 
EmployeeName,Department
FROM 
employees
WHERE EmployeeID=2;
SHOW COLUMNS FROM employees;
REPLACE INTO employees(EmployeeID,Department)
VALUES (2,'ComputerScience');

