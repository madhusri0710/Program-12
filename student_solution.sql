USE CollegeDB;

-- =========================
-- DEPARTMENT TABLE
-- =========================
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(101, 'Computer Science'),
(102, 'Mathematics'),
(103, 'Physics');


-- =========================
-- STUDENT TABLE
-- =========================
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Student (StudentID, StudentName, DepartmentID) VALUES
(1001, 'Arun', 101),
(1002, 'Priya', 102),
(1003, 'Kumar', 101),
(1004, 'Divya', 103);


-- =========================
-- FACULTY TABLE
-- =========================
CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Faculty (FacultyID, FacultyName, DepartmentID) VALUES
(301, 'Ravi', 101),
(302, 'Meena', 102),
(303, 'Karthik', 103);


-- =========================
-- COURSE TABLE
-- =========================
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);

INSERT INTO Course (CourseID, CourseName) VALUES
(201, 'Database Systems'),
(202, 'Data Structures'),
(203, 'Mathematics'),
(204, 'Physics');


-- =========================
-- ENROLLMENT TABLE
-- =========================
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT
);

INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID) VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201),
(5, 1004, 204);
