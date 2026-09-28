SET SERVEROUTPUT ON;

-- Student table
CREATE TABLE Student (
    StudentID NUMBER(5) PRIMARY KEY,
    StudentName VARCHAR2(50),
    DOB DATE,
    Gender VARCHAR2(10),
    DepartmentID NUMBER(5)
);

-- Write a PL/SQL procedure named INSERT_STUDENT
-- to insert a student record into the Student table.

-- Your procedure should accept:
-- StudentID
-- StudentName
-- DOB
-- Gender
-- DepartmentID

-- Write your procedure here.
