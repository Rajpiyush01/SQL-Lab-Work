# SQL Lab – GROUP BY and HAVING

## Objective

To understand SQL aggregate functions and use `GROUP BY` and `HAVING` clauses to summarize and analyze data from database tables.

## Tables Used

* **Student** (StudentID, Name, DepartmentID)
* **Faculty** (FacultyID, Name, DepartmentID)
* **Course** (CourseID, CourseName, Credits, DepartmentID, FacultyID)
* **Enrollment** (StudentID, CourseID, Semester, Grade)

## Concepts Used

* Aggregate Functions: `COUNT()`, `MAX()`, `MIN()`
* `GROUP BY` clause
* `HAVING` clause
* `JOIN` with aggregation

## Tasks Performed

* Basic aggregate queries on tables
* Grouping records using `GROUP BY`
* Filtering grouped results using `HAVING`
* Aggregation using `JOIN`
* Analytical queries on enrollment and course data

## How to Run

Execute the SQL script in Oracle SQL*Plus:

```sql
Lab-6 solution.sql
```
