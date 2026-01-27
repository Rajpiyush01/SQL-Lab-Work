CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Age INT,
    Phone VARCHAR(15)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT
);

ALTER TABLE Student ADD City VARCHAR(30);

ALTER TABLE Student ADD Semester INT;

ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;

DROP TABLE Course;

INSERT INTO Student VALUES
(101, 'Rahul', 'CSE', 20, '23105128012', 'Delhi', 3),
(102, 'Ankit', 'ECE', 21, '23105128014', 'Mumbai', 4),
(103, 'Nehanshu', 'CSE', 22, '23105128016', 'Bangalore', 5),
(104, 'Piyush', 'IT', 19, '23105128018', 'Kolkata', 2),
(105, 'Rohit', 'ME', 23, '23105128019', 'Chennai', 6);

SELECT * FROM Student;

SELECT RollNo, Name FROM Student;

SELECT * FROM Student WHERE Dept = 'CSE';

SELECT * FROM Student WHERE Age > 20;

UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;

UPDATE Student SET City = 'Patna' WHERE Name = 'Rahul';

UPDATE Student SET Age = Age + 1;

DELETE FROM Student WHERE RollNo = 105;

DELETE FROM Student;
