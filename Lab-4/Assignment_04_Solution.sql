SELECT StudentID AS Roll_No, Name AS Student_Name, DateOfBirth AS DOB, 
       Gender AS Sex, ContactNumber AS Phone, DepartmentID AS Dept_ID 
FROM Student;

SELECT StudentID AS Roll_No, Name AS Student_Name, DepartmentID AS Dept_ID 
FROM Student;

SELECT FacultyID AS ID, Name AS Faculty_Member, 
       Designation AS Job_Title, Email AS Contact_Email 
FROM Faculty;

SELECT CourseID AS CID, CourseName AS Title, 
       Credits AS Units, DepartmentID AS Dept_ID, FacultyID AS Instructor_ID 
FROM Course;

SELECT StudentID AS SID, CourseID AS CID, 
       Semester AS Term, Grade AS Performance_Mark 
FROM Enrollment;

SELECT * FROM Student WHERE DepartmentID = 101;

SELECT * FROM Student WHERE Gender = 'F';

SELECT * FROM Faculty WHERE Designation = 'Assistant Professor';

SELECT * FROM Faculty WHERE DepartmentID = 102;

SELECT * FROM Course WHERE Credits >= 4;

SELECT * FROM Student WHERE DateOfBirth > DATE '2003-01-01';

SELECT * FROM Enrollment WHERE Semester = '5th';

SELECT * FROM Student ORDER BY Name ASC;

SELECT * FROM Student ORDER BY DateOfBirth DESC;

SELECT * FROM Faculty ORDER BY Designation ASC;

SELECT * FROM Course ORDER BY Credits DESC;

SELECT * FROM Student FETCH FIRST 3 ROWS ONLY;

SELECT * FROM Course FETCH FIRST 5 ROWS ONLY;

SELECT Name, FLOOR(MONTHS_BETWEEN(SYSDATE, DateOfBirth) / 12) AS Age 
FROM Student;

SELECT CourseName, Credits + 1 AS Updated_Credits 
FROM Course;

SELECT StudentID, CourseID, Grade AS Final_Grade 
FROM Enrollment;

SELECT Name, EXTRACT(YEAR FROM DateOfBirth) AS Year_of_Birth 
FROM Student;

SELECT Name, SUBSTR(Email, INSTR(Email, '@') + 1) AS Email_Domain 
FROM Faculty;