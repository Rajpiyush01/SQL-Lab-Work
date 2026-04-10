-- PART A: BASIC SUBQUERIES

-- 1. Same department as a student
SELECT Name
FROM Student
WHERE DepartmentID = (
SELECT DepartmentID
FROM Student
WHERE StudentID = 23105128008
);

-- 2. Same gender as a student
SELECT *
FROM Student
WHERE Gender = (
SELECT Gender
FROM Student
WHERE StudentID = 23105128008
);

-- 3. Same department as another student
SELECT *
FROM Student
WHERE DepartmentID = (
SELECT DepartmentID
FROM Student
WHERE StudentID = 23102128003
);

-- PART B: SUBQUERIES WITH IN

-- 4. Students from departments having female students
SELECT *
FROM Student
WHERE DepartmentID IN (
SELECT DepartmentID
FROM Student
WHERE Gender = 'F'
);

-- 5. Students present in Enrollment
SELECT *
FROM Student
WHERE StudentID IN (
SELECT StudentID FROM Enrollment
);

-- 6. Students enrolled using EXISTS
SELECT *
FROM Student S
WHERE EXISTS (
SELECT 1
FROM Enrollment E
WHERE S.StudentID = E.StudentID
);

-- PART C: AGGREGATE SUBQUERIES

-- 7. Courses with credits greater than average
SELECT CourseName
FROM Course
WHERE Credits > (
SELECT AVG(Credits) FROM Course
);

-- 8. Students with StudentID greater than average
SELECT *
FROM Student
WHERE StudentID > (
SELECT AVG(StudentID) FROM Student
);

-- 9. Departments having more students than average
SELECT DepartmentID
FROM Student
GROUP BY DepartmentID
HAVING COUNT(*) > (
SELECT AVG(dept_count)
FROM (
SELECT COUNT(*) AS dept_count
FROM Student
GROUP BY DepartmentID
)
);

-- PART D: SUBQUERY INSTEAD OF JOIN

-- 10. Names of students enrolled
SELECT Name
FROM Student
WHERE StudentID IN (
SELECT StudentID FROM Enrollment
);

-- 11. Students assigned to any department
SELECT *
FROM Student
WHERE DepartmentID IS NOT NULL;

-- 12. Courses having students
SELECT CourseName
FROM Course
WHERE CourseID IN (
SELECT CourseID FROM Enrollment
);

-- PART E: ANALYTICAL SUBQUERIES

-- 13. Course with maximum credits
SELECT CourseName
FROM Course
WHERE Credits = (
SELECT MAX(Credits) FROM Course
);

-- 14. Students enrolled in more than one course
SELECT *
FROM Student
WHERE StudentID IN (
SELECT StudentID
FROM Enrollment
GROUP BY StudentID
HAVING COUNT(*) > 1
);

-- 15. Department with maximum students
SELECT DepartmentID
FROM Student
GROUP BY DepartmentID
HAVING COUNT(*) = (
SELECT MAX(dept_count)
FROM (
SELECT COUNT(*) AS dept_count
FROM Student
GROUP BY DepartmentID
)
);

-- PART F: CHALLENGING QUERIES

-- 16. Students in same course as a given student
SELECT *
FROM Student
WHERE StudentID IN (
SELECT StudentID
FROM Enrollment
WHERE CourseID IN (
SELECT CourseID
FROM Enrollment
WHERE StudentID = 23105128008
)
);

-- 17. Students NOT enrolled in any course
SELECT *
FROM Student
WHERE StudentID NOT IN (
SELECT StudentID FROM Enrollment
);

-- 18. Courses with NO students enrolled
SELECT CourseName
FROM Course
WHERE CourseID NOT IN (
SELECT CourseID FROM Enrollment
);
