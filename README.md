# PL/SQL Procedure – Insert Student Record

## Objective

Write a PL/SQL procedure to insert a student record into the `Student` table.

## Problem Statement

Create a PL/SQL procedure named:

```text
INSERT_STUDENT
```

The procedure should accept the following parameters:

* StudentID
* StudentName
* DOB
* Gender
* DepartmentID

The procedure must insert these values into the `Student` table.

## Student Table

The table contains:

| Column       | Datatype     |
| ------------ | ------------ |
| StudentID    | NUMBER(5)    |
| StudentName  | VARCHAR2(50) |
| DOB          | DATE         |
| Gender       | VARCHAR2(10) |
| DepartmentID | NUMBER(5)    |

## Requirements

Your procedure must:

1. Use `CREATE OR REPLACE PROCEDURE`.
2. Use the procedure name `INSERT_STUDENT`.
3. Accept StudentID as a parameter.
4. Accept StudentName as a parameter.
5. Accept DOB as a parameter.
6. Accept Gender as a parameter.
7. Accept DepartmentID as a parameter.
8. Use an `INSERT INTO Student` statement.
9. Insert all five student details.
10. End the procedure correctly.
