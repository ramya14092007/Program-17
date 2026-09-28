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
-- Step 1: Create Student table

CREATE TABLE Student (
    StudentID NUMBER PRIMARY KEY,
    StudentName VARCHAR2(50),
    DepartmentID NUMBER
);

-- Step 2: Create Procedure

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE insert_student (
    p_student_id    IN NUMBER,
    p_student_name  IN VARCHAR2,
    p_department_id IN NUMBER
)
IS
BEGIN
    INSERT INTO Student (StudentID, StudentName, DepartmentID)
    VALUES (p_student_id, p_student_name, p_department_id);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully.');
END;
/

-- Step 3: Execute Procedure

BEGIN
    insert_student(101, 'Arun', 10);
END;
/

-- Step 4: Check the inserted record

SELECT * FROM Student;
-- Write your procedure here.
