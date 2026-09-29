USE CollegeDB;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Student (StudentID, StudentName, DepartmentID)
VALUES
(1001, 'Arun', 101),
(1002, 'Priya', 102),
(1003, 'Kumar', 101);


CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Department (DepartmentID, DepartmentName)
VALUES
(101, 'Computer Science'),
(102, 'Mathematics');


CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);

INSERT INTO Course (CourseID, CourseName)
VALUES
(201, 'Database Systems'),
(202, 'Data Structures'),
(203, 'Mathematics');


CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT
);

INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID)
VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201);


CREATE VIEW StudentDetails AS
SELECT
    Student.StudentName,
    Course.CourseName,
    Department.DepartmentName
FROM Student
INNER JOIN Enrollment
    ON Student.StudentID = Enrollment.StudentID
INNER JOIN Course
    ON Enrollment.CourseID = Course.CourseID
INNER JOIN Department
    ON Student.DepartmentID = Department.DepartmentID;


SELECT * FROM StudentDetails;
