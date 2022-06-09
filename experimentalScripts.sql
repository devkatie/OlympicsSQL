-- How many courses are in the CS dept?
SELECT COUNT(coursenumber) as "Course Count"
FROM course
WHERE department = 'CS';

-- What is the total number of credits for all the courses?
SELECT SUM(credithours) AS TotalCredits
FROM course;

-- What is the highest amount of credits for a course?
SELECT MAX(credithours)
FROM course;

-- What is the lowest amount of credits for a course?
SELECT MIN(credithours)
FROM COURSE;

-- List all student information alphabetically by student's name
SELECT *
FROM student
ORDER BY studentname;

-- Show the sum of the studentnumber and class for each student
SELECT studentname, SUM(studentnumber + studentclass)
FROM student
GROUP BY studentname;

-- What is the square root of 25?
SELECT SQRT(25) AS sqrt
FROM DUAL;

-- Show today's date
SELECT CURRENT_DATE AS Today
FROM DUAL;

-- Show the value you get when you round 19.99
SELECT ROUND(19.99) AS rounded
FROM DUAL;

-- Convert 'mrs. victoria hong' into 'Mrs. Victoria Hong'
SELECT UPPER('mrs. victoria hong')
FROM DUAL;

-- Convert the word HELLO into lowercase
SELECT LOWER('HELLO')
FROM DUAL;

-- List all names of student who sound like 'brn'
SELECT studentname
FROM student
WHERE soundex(studentname) = soundex('Brn');

-- How many characters are in each student's name?
SELECT length(studentname)
FROM student;

-- Display the first two characters of each student's name
SELECT SUBSTR(studentname, 1, 2)
FROM student;

-- Display all the course names in uppercase


-- List each year that courses were offered


-- What position does the word 'Structures' start in any course name?
SELECT Coursenumber, INSTR(Coursename, 'Structures')
FROM course;

-- Show all course numbers padded with leading asterisks to fill an 8 char value
SELECT CONCAT('*', coursenumber)
FROM course
WHERE length(coursenumber) < 8;

-- Replace all the 'CS' characters in course numbers from the COURSE table with 'COM'
SELECT REPLACE(Coursenumber, 'CS', 'COM')
FROM course;

-- Change all the year values to 4 digits. You can safely assume that all the years
-- were in the 20th century.
SELECT CONCAT('20', semesteryear) AS SectionYear
FROM section;