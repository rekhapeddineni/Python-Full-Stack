CREATE DATABASE SQL_Practice;
USE SQL_Practice;
CREATE TABLE Student(
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50)
);
INSERT INTO Student (Name, Age, Course)
VALUES
('Rahul', 22, 'MCA'),
('Priya', 21, 'MBA'),
('Arjun', 23, 'BCA'),
('Sneha', 22, 'MCA'),
('Kiran', 20, 'B.Tech');
UPDATE Student
SET Age = 23
WHERE StudentID = 1;
select * from student;
DELETE FROM Student
WHERE StudentID = 5;