
CREATE TABLE Department (
DepartmentID NUMBER PRIMARY KEY,
DepartmentName VARCHAR2(50)
);

CREATE TABLE Faculty (
FacultyID NUMBER PRIMARY KEY,
FacultyName VARCHAR2(50)
);

CREATE TABLE Student (
StudentID NUMBER PRIMARY KEY,
StudentName VARCHAR2(50),
DepartmentID NUMBER,
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Course (
CourseID NUMBER PRIMARY KEY,
CourseName VARCHAR2(50),
FacultyID NUMBER,
FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);

CREATE TABLE Enrollment (
EnrollmentID NUMBER PRIMARY KEY,
StudentID NUMBER,
CourseID NUMBER,
FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);
