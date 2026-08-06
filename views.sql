use employee_db;
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Designation VARCHAR(30),
    Salary DECIMAL(10,2),
    Experience INT,
    City VARCHAR(30)
);
INSERT INTO Employee (EmployeeName, Department, Designation, Salary, Experience, City)
VALUES
('Rahul', 'HR', 'Manager', 60000, 8, 'Hyderabad'),
('Anjali', 'Finance', 'Accountant', 45000, 5, 'Bangalore'),
('Kiran', 'IT', 'Software Engineer', 70000, 4, 'Chennai'),
('Sneha', 'Marketing', 'Executive', 40000, 3, 'Mumbai'),
('Arjun', 'IT', 'Team Lead', 85000, 7, 'Hyderabad'),
('Priya', 'HR', 'Recruiter', 38000, 2, 'Pune'),
('Vikram', 'Finance', 'Manager', 75000, 9, 'Delhi');
select * from employee;
CREATE VIEW Employee_View AS
SELECT EmployeeName, Department
FROM Employee;
SELECT * FROM EmployeeView;
DROP VIEW Finance_Department;
CREATE VIEW Finance_Department AS
SELECT *
FROM Employee
WHERE Department = 'Finance';
select * from Finance_Department;
drop view HighSalaryEmployees;
CREATE VIEW HighSalaryEmployees AS
SELECT EmployeeName, Salary
FROM Employee
WHERE Salary > 45000;
select * from HighSalaryEmployees;
CREATE VIEW  SeparateTable as select EmployeeID,EmployeeName from Employee ;
select * from SeparateTable;