#!/bin/bash

echo "PL/SQL PROCEDURE AUTOGRADING"

SCORE=0

if [ -f "answers.sql" ]; then
    echo "PASS: answers.sql found"
    SCORE=$((SCORE + 1))
else
    echo "FAIL: answers.sql not found"
    exit 1
fi

SQL=$(cat "answers.sql")

if echo "$SQL" | grep -Eiq "create[[:space:]]+or[[:space:]]+replace[[:space:]]+procedure"; then
    echo "PASS: CREATE OR REPLACE PROCEDURE found"
    SCORE=$((SCORE + 1))
else
    echo "FAIL: CREATE OR REPLACE PROCEDURE not found"
fi

if echo "$SQL" | grep -Eiq "procedure[[:space:]]+insert_student"; then
    echo "PASS: INSERT_STUDENT procedure found"
    SCORE=$((SCORE + 1))
else
    echo "FAIL: INSERT_STUDENT procedure not found"
fi

if echo "$SQL" | grep -Eiq "p_student_id|studentid"; then
    echo "PASS: StudentID parameter found"
    SCORE=$((SCORE + 1))
else
    echo "FAIL: StudentID parameter not found"
fi

if echo "$SQL" | grep -Eiq "p_student_name|studentname"; then
    echo "PASS: StudentName parameter found"
    SCORE=$((SCORE + 1))
else
    echo "FAIL: StudentName parameter not found"
fi

if echo "$SQL" | grep -Eiq "insert[[:space:]]+into[[:space:]]+student"; then
    echo "PASS: INSERT INTO Student found"
    SCORE=$((SCORE + 1))
else
    echo "FAIL: INSERT INTO Student not found"
fi

if echo "$SQL" | grep -Eiq "studentid"; then
    echo "PASS: StudentID field found"
    SCORE=$((SCORE + 1))
else
    echo "FAIL: StudentID field not found"
fi

if echo "$SQL" | grep -Eiq "begin"; then
    echo "PASS: BEGIN block found"
    SCORE=$((SCORE + 1))
else
    echo "FAIL: BEGIN block not found"
fi

if echo "$SQL" | grep -Eiq "commit"; then
    echo "PASS: COMMIT found"
    SCORE=$((SCORE + 1))
else
    echo "FAIL: COMMIT not found"
fi

if echo "$SQL" | grep -Eiq "dbms_output"; then
    echo "PASS: DBMS_OUTPUT found"
    SCORE=$((SCORE + 1))
else
    echo "FAIL: DBMS_OUTPUT not found"
fi

echo "SCORE: $SCORE / 10"

if [ "$SCORE" -eq 10 ]; then
    echo "PASS: Assignment completed successfully"
    exit 0
else
    echo "FAIL: Assignment needs correction"
    exit 1
fi
