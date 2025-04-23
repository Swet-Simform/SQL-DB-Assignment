-- Creating EmployeePosition Table
CREATE TABLE EmployeePosition(
EmpID INT PRIMARY KEY,
EmpPosition VARCHAR(10) NOT NULL,
DateOfJoining date NOT NULL,
Salary INT CHECK (salary > 0) NOT NULL,
FOREIGN KEY (EmpID) REFERENCES EmployeeInfo (EmpID)
);

-- Inserting data in EmployeePosition Table
INSERT INTO EmployeePosition
VALUES (1, 'Manager', '2022-05-01', 500000),
       (2, 'Executive', '2022-05-02', 75000),
       (3, 'Manager', '2022-05-01', 90000),
       (4, 'Lead', '2022-05-02', 85000),
       (5, 'Executive', '2022-05-01', 300000);

-- Show all entries
SELECT * FROM EmployeePosition;	   













