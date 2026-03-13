-- ===============================
-- Part A: Basic Aggregate Queries
-- ===============================

SELECT COUNT(*) AS Total_Students
FROM Student;

SELECT COUNT(*) AS Total_Faculty
FROM Faculty;

SELECT COUNT(*) AS Total_Courses
FROM Course;

SELECT MAX(Credits) AS Maximum_Credits
FROM Course;

SELECT MIN(Credits) AS Minimum_Credits
FROM Course;

-- ===============================
-- Part B: GROUP BY on Single Tables
-- ===============================

SELECT DepartmentID, COUNT(*) AS Number_of_Students
FROM Student
GROUP BY DepartmentID;

SELECT DepartmentID, COUNT(*) AS Number_of_Faculty
FROM Faculty
GROUP BY DepartmentID;

SELECT DepartmentID, COUNT(*) AS Number_of_Courses
FROM Course
GROUP BY DepartmentID;

SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester;

SELECT Grade, COUNT(*) AS Number_of_Students
FROM Enrollment
GROUP BY Grade;

-- ===============================
-- Part C: GROUP BY with HAVING
-- ===============================

SELECT DepartmentID, COUNT(*) AS Total_Students
FROM Student
GROUP BY DepartmentID
HAVING COUNT(*) > 3;

SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester
HAVING COUNT(*) > 2;

SELECT Grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY Grade
HAVING COUNT(*) > 1;

SELECT DepartmentID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY DepartmentID
HAVING COUNT(*) > 1;

-- ===============================
-- Part D: Aggregation with JOIN
-- ===============================

SELECT CourseID, COUNT(StudentID) AS Enrolled_Students
FROM Enrollment
GROUP BY CourseID;

SELECT Course.CourseName, COUNT(Enrollment.StudentID) AS Enrolled_Students
FROM Course
INNER JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID
GROUP BY Course.CourseName;

SELECT DepartmentID, COUNT(StudentID) AS Total_Students
FROM Student
GROUP BY DepartmentID;

SELECT Faculty.Name, COUNT(Course.CourseID) AS Courses_Taught
FROM Faculty
INNER JOIN Course
ON Faculty.FacultyID = Course.FacultyID
GROUP BY Faculty.Name;

-- ===============================
-- Part E: Analytical Queries
-- ===============================

SELECT Course.CourseName, MAX(Enrollment.Grade) AS Maximum_Grade
FROM Course
INNER JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID
GROUP BY Course.CourseName;

SELECT DepartmentID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY DepartmentID;

SELECT Semester, COUNT(StudentID) AS Total_Students
FROM Enrollment
GROUP BY Semester;

SELECT CourseID, COUNT(StudentID) AS Total_Students
FROM Enrollment
GROUP BY CourseID
HAVING COUNT(StudentID) > 2;
