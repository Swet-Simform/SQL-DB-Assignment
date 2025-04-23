-- Creating EmployeeInfo Table
CREATE TABLE EmployeeInfo(
EmpID INT PRIMARY KEY,
EmpFname VARCHAR(10) NOT NULL,
EmpLname VARCHAR(10) NOT NULL,
Department VARCHAR(10) NOT NULL,
Project VARCHAR(5) NOT NULL,
Address VARCHAR(20) NOT NULL,
DOB date NOT NULL,
Gender VARCHAR(1) NOT NULL
);

-- Inserting data in EmployeeInfo Table
INSERT INTO EmployeeInfo
VALUES (1, 'Sanjay', 'Mehra', 'HR', 'P1', 'Hyderabad(HYD)', '1976-12-01', 'M'),
       (2, 'Ananya', 'Mishra', 'Admin', 'P2', 'Delhi(DEL)', '1968-05-02', 'F'),
       (3, 'Rohan', 'Diwan', 'Account', 'P3', 'Mumbai(BOM)', '1980-01-01', 'M'),
       (4, 'Sonia', 'Kulkarni', 'HR', 'P1', 'Hyderabad(HYD)', '1992-05-02', 'F'),
       (5, 'Ankit', 'Kapoor', 'Admin', 'P2', 'Delhi(DEL)', '1994-07-03', 'M');

-- Show all entries
SELECT * FROM EmployeeInfo;	   

















