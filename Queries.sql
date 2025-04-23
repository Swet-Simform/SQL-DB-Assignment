-- 1. Write a query to fetch the number of employees working in the department ‘Admin’
SELECT COUNT(EmpID) AS AdminCount FROM EmployeeInfo WHERE Department = 'Admin';


-- 2. Write a query to retrieve the first four characters of EmpLname from the EmployeeInfo table.
SELECT LEFT(EmpLname, 4) AS TrimmedLname FROM EmployeeInfo;


-- 3. Write a query to find all the employees whose salary is between 50,000 to 1,00,000.
SELECT concat(EmpFname,' ',EmpLname) AS Name FROM EmployeeInfo AS I JOIN EmployeePosition AS P ON I.EmpID=P.EmpID 
WHERE Salary BETWEEN 50000 AND 100000;


-- 4. Write a query to find the names of employees that begin with ‘S’
SELECT EmpFname AS Name FROM EmployeeInfo WHERE EmpFname LIKE 'S%';


-- 5. Write a query to fetch top 3 records order by salary.
SELECT concat(EmpFname,' ',EmpLname) AS Name, Salary FROM EmployeeInfo AS I JOIN EmployeePosition AS P ON I.EmpID=P.EmpID 
ORDER BY Salary DESC LIMIT 3;


-- 6. Write a query to fetch details of all employees excluding “Sanjay” and “Sonia” from the EmployeeInfo table.
SELECT * FROM EmployeeInfo WHERE EmpFname NOT IN ('Sanjay', 'Sonia');


-- 7. Write a query to fetch the department-wise count of employees sorted by department’s count in ascending order.
SELECT Department, COUNT(EmpID) FROM EmployeeInfo GROUP BY Department ORDER BY COUNT(EmpID);


-- 8. Create indexing for any particular field and show the difference in data fetching before and after indexing
SELECT EmpFname AS Name FROM EmployeeInfo WHERE EmpFname='Sanjay';
CREATE INDEX idx_empfname ON EmployeeInfo(EmpFname);


