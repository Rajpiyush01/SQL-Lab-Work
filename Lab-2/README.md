# College Database - DBMS Lab 2

In this lab, an ER diagram for a College Database was designed and converted into relational tables.

# Part A - ER Diagram

The ER diagram includes the following entities:

- Department
- Student
- Faculty
- Course
- Enrollment

Primary keys are underlined, relationships are shown using diamonds, and cardinalities (1-M and M-N) are clearly mentioned.

The ER diagram is submitted as a `.png` file in this repository.

# Part B - Relational Tables

1. Department

Attributes:

- DepartmentID
- DepartmentName
- OfficeLocation

Primary Key:

- DepartmentID

Foreign Keys:

- None

2. Student

Attributes:

- StudentID
- Name
- DateOfBirth
- Gender
- ContactNumber
- DepartmentID

Primary Key:

- StudentID

Foreign Key:

- DepartmentID - Department(DepartmentID)

3.  Faculty
    Attributes:

- FacultyID
- Name
- Designation
- Email
- DepartmentID

Primary Key:

- FacultyID

Foreign Key:

- DepartmentID - Department(DepartmentID)

4.  Course
    Attributes:

- CourseID
- CourseName
- Credits
- DepartmentID
- FacultyID

Primary Key:

- CourseID

Foreign Keys:

- DepartmentID - Department(DepartmentID)
- FacultyID - Faculty(FacultyID)

5.  Enrollment
    Attributes:

- StudentID
- CourseID
- Semester
- Grade

Primary Key:

- (StudentID, CourseID) - Composite Key

Foreign Keys:

- StudentID - Student(StudentID)
- CourseID - Course(CourseID)

# Part C - SQL Implementation

All tables were created using SQL `CREATE TABLE` statements with appropriate primary key and foreign key constraints.  
The SQL file is included in this repository as a separate `.sql` file.
