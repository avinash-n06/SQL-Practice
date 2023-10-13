-- Create the 'practice_sql_queries' database
CREATE DATABASE practice_sql_queries;

-- Create the 'studies' table
CREATE TABLE studies (
    PNAME VARCHAR(15),
    INSTITUTE VARCHAR(15),
    COURSE VARCHAR(5),
    COURSE_FEE INT
);

-- Insert data into the 'studies' table
INSERT INTO studies (PNAME, INSTITUTE, COURSE, COURSE_FEE)
VALUES
    ('ANAND', 'SABHARI', 'PGDCA', 4500),
    ('ALTAF', 'COIT', 'DCA', 7200),
    ('JULIANA', 'BDPS', 'MCA', 22000),
    ('KAMALA', 'PRAGATHI', 'DCA', 5000),
    ('MARY', 'SABHARI', 'PGDCA', 4500),
    ('NELON', 'PRAGATHI', 'DAP', 6200),
    ('PATRICK', 'PRAGATHI', 'DCAP', 5200),
    ('QADIR', 'APPLE', 'HDCA', 14000),
    ('RAMESH', 'SABHARI', 'PGDCA', 4500),
    ('REMITHA', 'BRILLIANT', 'DCAP', 11000),
    ('REVTHI', 'BDPS', 'DCS', 6000),
    ('VIJAYA', 'SABHARI', 'DAP', 5000),
    ('ANAND', 'BDPS', 'DCA', 48000);

-- Create the 'software' table
CREATE TABLE software (
    PNAME VARCHAR(15),
    TITLE VARCHAR(15),
    DEVELOPIN VARCHAR(15),
    SCOST INT,
    DCOST INT,
    SOLD INT
);

-- Insert data into the 'software' table
INSERT INTO software (PNAME, TITLE, DEVELOPIN, SCOST, DCOST, SOLD)
VALUES
    ('MARY', 'README', 'CPP', 300, 1200, 84),
    ('ANAND', 'PARACHUTES', 'BASIC', 399.95, 6000, 43),
    ('ANAND', 'VIDEO TITLING', 'PASCAL', 7500, 16000, 9),
    ('JULIANA', 'INVENTORY', 'COBOL', 3000, 3500, 0),
    ('KAMALA', 'PAYROLL PKG.', 'DBASE', 9000, 20000, 7),
    ('MARY', 'FINANCIAL ACCT.', 'ORACLE', 18000, 85000, 4),
    ('MARY', 'CODE GENERATOR', 'C', 4500, 20000, 23),
    ('PATRICK', 'README', 'CPP', 300, 1200, 84),
    ('QADIR', 'BOMBS AWAY', 'ASSEMBLY', 750, 3000, 11),
    ('QADIR', 'VACCINES', 'C', 1900, 3100, 21),
    ('RAMESH', 'HOTEL MGMT.', 'DBASE', 13000, 35000, 4),
    ('RAMESH', 'DEAD LEE', 'PASCAL', 599.95, 4500, 73),
    ('REMITHA', 'PC UTILITIES', 'C', 725, 5000, 51),
    ('REMITHA', 'TR HELP PKG.', 'ASSEMBLY', 2500, 6000, 7),
    ('REVATHI', 'HOSPITAL MGMT.', 'PASCAL', 1100, 75000, 2),
    ('VIJAYA', 'TSR EDITOR', 'C', 900, 700, 6);

-- Create the 'programmer' table
CREATE TABLE programmer (
    PNAME VARCHAR(15),
    DOB DATE,
    DOJ DATE,
    GENDER VARCHAR(15),
    PROF1 VARCHAR(15),
    PROF2 VARCHAR(15),
    SALARY INT
);

-- Insert data into the 'programmer' table
INSERT INTO programmer (PNAME, DOB, DOJ, GENDER, PROF1, PROF2, SALARY)
VALUES
    ('ANAND', '1966-04-12', '1992-04-21', 'M', 'PASCAL', 'BASIC', 3200),
    ('ALTAF', '1964-07-02', '1990-11-13', 'M', 'CLIPPER', 'COBOL', 2800),
    ('JULIANA', '1964-07-02', '1990-04-21', 'F', 'COBOL', 'DBASE', 3000),
    ('KAMALA', '1968-10-30', '1992-01-02', 'F', 'C', 'DBASE', 2900),
    ('MARY', '1970-06-24', '1991-02-01', 'F', 'CPP', 'ORACLE', 4500),
    ('NELSON', '1985-09-11', '1989-10-11', 'M', 'COBOL', 'DBASE', 2500),
    ('PATRICK', '1965-11-10', '1990-04-21', 'M', 'PASCAL', 'CLIPPER', 2800),
    ('QUADIR', '1965-08-31', '1991-04-21', 'M', 'ASSEMBLY', 'C', 3000),
    ('RAMESH', '1967-05-03', '1991-02-28', 'M', 'PASCAL', 'DBASE', 3200),
    ('REBECCA', '1967-01-01', '1990-12-01', 'F', 'BASIC', 'COBOL', 2500),
    ('REMITHA', '1970-04-19', '1993-04-20', 'F', 'C', 'ASSEMBLY', 3600),
    ('REVATHI', '1969-12-02', '1992-01-02', 'F', 'PASCAL', 'BASIC', 3700),
    ('VIJAYA', '1965-12-14', '1992-05-02', 'F', 'FOXPRO', 'C', 3500);

-- Task 1
SELECT AVG(SCOST) FROM software WHERE DEVELOPIN LIKE 'PASCAL';

-- Task 2
SELECT PNAME, DATEDIFF(YEAR, DOB, GETDATE()) AS age FROM programmer;

-- Task 3
SELECT PNAME FROM studies WHERE COURSE LIKE 'DAP';

-- Task 4
SELECT PNAME, DOB FROM programmer WHERE MONTH(DOB) = 1;

-- Task 5
SELECT DISTINCT TITLE, SOLD FROM software WHERE SOLD = (SELECT MAX(SOLD) FROM software);

-- Task 6
SELECT MIN(COURSE_FEE) FROM studies;

-- Task 7
SELECT COUNT(PNAME) FROM studies WHERE COURSE LIKE 'PGDCA';

-- Task 8
SELECT SUM(DCOST) AS revenue FROM software WHERE DEVELOPIN = 'C';

-- Task 9
SELECT TITLE, DEVELOPIN FROM software WHERE PNAME LIKE 'RAMESH';

-- Task 10
SELECT COUNT(PNAME) FROM studies WHERE INSTITUTE LIKE 'SABHARI';

-- Task 11
SELECT * FROM software WHERE SCOST > 2000;

-- Task 12
SELECT * FROM software WHERE (SCOST * SOLD) >= DCOST;

-- Task 13
SELECT TOP 1 PNAME, DEVELOPIN, DCOST FROM software WHERE DEVELOPIN = 'BASIC';

-- Task 14
SELECT COUNT(DEVELOPIN) FROM software WHERE DEVELOPIN = 'DBASE';

-- Task 15
SELECT COUNT(PNAME) FROM studies WHERE INSTITUTE = 'pragathi';

-- Task 16
SELECT COUNT(PNAME) FROM studies WHERE COURSE_FEE BETWEEN 5000 AND 10000;

-- Task 17
SELECT AVG(COURSE_FEE) FROM studies;

-- Task 18
SELECT * FROM programmer WHERE PROF1 = 'C' OR PROF2 = 'C';

-- Task 19
SELECT COUNT(PNAME) FROM programmer WHERE PROF1 IN ('COBOL', 'PASCAL') OR PROF2 IN ('COBOL', 'PASCAL');

-- Task 20
SELECT COUNT(PNAME) FROM programmer WHERE PROF1 NOT IN ('COBOL', 'PASCAL') AND PROF2 NOT IN ('COBOL', 'PASCAL');

-- Task 21
SELECT MAX(DATEDIFF(YEAR, DOB, GETDATE())) FROM programmer WHERE GENDER = 'M';

-- Task 22
SELECT AVG(DATEDIFF(YEAR, DOB, GETDATE())) FROM programmer WHERE GENDER = 'F';

-- Task 23
SELECT PNAME, DATEDIFF(YEAR, DOJ, GETDATE()) FROM programmer ORDER BY PNAME DESC;

-- Task 24
SELECT PNAME FROM programmer WHERE MONTH(DOB) = MONTH(CURRENT_TIMESTAMP);

-- Task 25
SELECT COUNT(PNAME) FROM programmer WHERE GENDER = 'F';

-- Task 26
SELECT DISTINCT PROF1 FROM programmer WHERE GENDER = 'M' UNION SELECT DISTINCT PROF2 FROM programmer WHERE GENDER = 'M';

-- Task 27
SELECT AVG(SALARY) FROM programmer;

-- Task 28
SELECT COUNT(SALARY) FROM programmer WHERE SALARY BETWEEN 2000 AND 4000;

-- Task 29
SELECT * FROM programmer WHERE PROF1 NOT IN ('CLIPPER', 'COBOL', 'PASCAL') AND PROF2 NOT IN ('CLIPPER', 'COBOL', 'PASCAL');

-- Task 30
SELECT PNAME, SUM(DCOST) AS dcost FROM software GROUP BY PNAME;

-- Task 31
SELECT PNAME, SUM(SCOST) AS scost FROM software GROUP BY PNAME;

-- Task 32
SELECT PNAME, SUM(SOLD) AS sold FROM software GROUP BY PNAME;

-- Task 33
SELECT DEVELOPIN, SUM(SCOST) AS scost FROM software GROUP BY DEVELOPIN;

-- Task 34
SELECT DEVELOPIN, AVG(SCOST) AS scost, AVG(DCOST) AS dcost, AVG(SCOST * SOLD) AS avg_per_copy FROM software GROUP BY DEVELOPIN;

-- Task 35
SELECT PNAME, MAX(DCOST) AS costliest, MIN(DCOST) AS cheapest FROM software GROUP BY PNAME;

-- Task 36
SELECT INSTITUTE, COUNT(COURSE) AS num_of_course, AVG(COURSE_FEE) FROM studies GROUP BY INSTITUTE;

-- Task 37
SELECT INSTITUTE, COUNT(PNAME) AS students FROM studies GROUP BY INSTITUTE;

-- Task 38
SELECT PNAME, GENDER FROM programmer;

-- Task 39
SELECT PNAME, TITLE FROM software;

-- Task 40
SELECT DEVELOPIN, COUNT(TITLE) FROM software WHERE DEVELOPIN NOT IN ('C', 'CPP') GROUP BY DEVELOPIN;

-- Task 41
SELECT DEVELOPIN, COUNT(TITLE) FROM software WHERE DCOST < 1000 GROUP BY DEVELOPIN;

-- Task 42
SELECT TITLE, AVG(SCOST - DCOST) AS avg_diff FROM software GROUP BY TITLE;

-- Task 43
SELECT PNAME, SUM(SCOST) AS scost, SUM(DCOST) AS dcost, SUM(SCOST) - SUM(DCOST) AS amt_to_be_rec FROM software GROUP BY PNAME;

-- Task 44
SELECT MAX(SALARY) AS highest, MIN(SALARY) AS lowest, AVG(SALARY) AS average FROM programmer WHERE SALARY > 2000;

-- Task 45
SELECT PNAME FROM programmer WHERE SALARY = (SELECT MAX(SALARY) FROM programmer WHERE PROF1 = 'C' OR PROF2 = 'C');

-- Task 46
SELECT PNAME
FROM programmer
WHERE SALARY = (
    SELECT MAX(SALARY)
    FROM programmer
    WHERE GENDER LIKE 'F' AND (PROF1 = 'COBOL' OR PROF2 = 'COBOL')
);

-- Task 47
WITH CTE AS (
    SELECT PNAME, PROF1, PROF2, SALARY,
        RANK() OVER (PARTITION BY PROF1 ORDER BY SALARY DESC) AS rank1,
        RANK() OVER (PARTITION BY PROF2 ORDER BY SALARY DESC) AS rank2
    FROM programmer
)
SELECT PNAME, PROF1, PROF2, SALARY
FROM CTE
WHERE rank1 = 1 OR rank2 = 1;

-- Task 48
SELECT PNAME
FROM programmer
WHERE DOJ = (
    SELECT MIN(DOJ)
    FROM programmer
);

-- Task 49
SELECT PNAME
FROM programmer
WHERE DOJ = (
    SELECT MAX(DOJ)
    FROM programmer
    WHERE GENDER LIKE 'M' AND (PROF1 LIKE 'PASCAL' OR PROF2 LIKE 'PASCAL')
);

-- Task 50 & 51
SELECT PROF1 AS language, PNAME AS programmer 
FROM programmer 
WHERE PROF1 NOT IN (SELECT PROF2 FROM programmer) 
    AND PROF1 IN (SELECT PROF1 FROM programmer GROUP BY PROF1 HAVING COUNT(PROF1) = 1)
UNION
SELECT PROF2 AS language, PNAME AS programmer 
FROM programmer 
WHERE PROF2 NOT IN (SELECT PROF1 FROM programmer) 
    AND PROF2 IN (SELECT PROF2 FROM programmer GROUP BY PROF2 HAVING COUNT(PROF2) = 1);

-- Task 52
SELECT TOP 1 PNAME, DOB
FROM programmer
WHERE 'DBASE' IN (PROF1, PROF2)
ORDER BY DOB;

-- Task 53
SELECT PNAME
FROM programmer 
WHERE GENDER LIKE 'F' 
    AND SALARY > 3000 
    AND PROF1 NOT IN ('C', 'C++', 'ORACLE', 'DBASE')
    AND PROF2 NOT IN ('C', 'C++', 'ORACLE', 'DBASE');

-- Task 54
SELECT TOP 1 INSTITUTE, COUNT(*) AS number_of_students
FROM studies
GROUP BY INSTITUTE
ORDER BY number_of_students DESC;

-- Task 55
SELECT TOP 1 COURSE, COURSE_FEE
FROM studies
ORDER BY COURSE_FEE DESC;

-- Task 56
SELECT TOP 1 COURSE, COUNT(*) AS number_of_students
FROM studies
GROUP BY COURSE
ORDER BY number_of_students DESC;

-- Task 57
SELECT TOP 1 INSTITUTE, COURSE, COURSE_FEE
FROM studies
ORDER BY COURSE_FEE DESC;

-- Task 58
SELECT TOP 1 INSTITUTE, COURSE
FROM studies
WHERE COURSE_FEE < (SELECT AVG(COURSE_FEE) FROM studies)
ORDER BY COURSE_FEE;

-- Task 59
SELECT COURSE
FROM studies
WHERE COURSE_FEE BETWEEN
    (SELECT AVG(COURSE_FEE) - 1000 FROM studies)
    AND (SELECT AVG(COURSE_FEE) + 1000 FROM studies);

-- Task 60
SELECT TITLE
FROM software
WHERE DCOST = (SELECT MAX(DCOST) FROM software);

-- Task 61
SELECT COURSE
FROM studies
GROUP BY COURSE
HAVING COUNT(PNAME) < (SELECT AVG(COUNT(PNAME)) FROM studies GROUP BY COURSE);

-- Task 62
SELECT TITLE
FROM software
WHERE SCOST = (SELECT MIN(SCOST) FROM software);

-- Task 63
SELECT PNAME
FROM software
WHERE SOLD = (SELECT MIN(SOLD) FROM software);

-- Task 64
SELECT DEVELOPIN
FROM software
WHERE SOLD = (SELECT MAX(SOLD) FROM software);

-- Task 65
SELECT SUM(SOLD)
FROM software
WHERE (DCOST - SCOST) = (SELECT MIN(DCOST - SCOST) FROM software);

-- Task 66
SELECT TITLE
FROM software
WHERE DCOST = (SELECT MAX(DCOST) FROM software WHERE DEVELOPIN LIKE 'PASCAL');

-- Task 67
SELECT DISTINCT DEVELOPIN
FROM software
WHERE DEVELOPIN = (SELECT MAX(DEVELOPIN) FROM software);

-- Task 68
SELECT PNAME
FROM software
WHERE DEVELOPIN = (SELECT MAX(DEVELOPIN) FROM software);

-- Task 69
SELECT PNAME
FROM software
WHERE DCOST = (SELECT MAX(DCOST) FROM software);

-- Task 70
SELECT TITLE
FROM software
WHERE SOLD < (SELECT AVG(SOLD) FROM software);

-- Task 71
SELECT PNAME
FROM software
WHERE ((SCOST * SOLD) - DCOST) > (DCOST * 2);

-- Task 72
SELECT PNAME, TITLE
FROM software
WHERE DCOST IN (SELECT MIN(DCOST) FROM software GROUP BY DEVELOPIN);

-- Task 73
SELECT DEVELOPIN
FROM software
WHERE SOLD = (SELECT MAX(SOLD) FROM software)
OR SOLD = (SELECT MIN(SOLD) FROM software);

-- Task 74
SELECT TOP 1 PNAME
FROM programmer
WHERE GENDER LIKE 'M'
AND YEAR(DOB) = 1965
ORDER BY DOB DESC;

-- Task 75
SELECT TOP 1 PNAME
FROM programmer
WHERE GENDER LIKE 'F'
AND YEAR(DOJ) = 1992
ORDER BY DOB;

-- Task 76
SELECT DISTINCT YEAR(DOB)
FROM programmer
WHERE YEAR(DOB) = (
    SELECT TOP 1 YEAR(DOB)
    FROM programmer
    GROUP BY YEAR(DOB)
    ORDER BY COUNT(YEAR(DOB)) DESC
);

-- Task 77
SELECT DISTINCT MONTH(DOJ)
FROM programmer
WHERE MONTH(DOJ) = (
    SELECT TOP 1 MONTH(DOJ)
    FROM programmer
    GROUP BY MONTH(DOJ)
    ORDER BY COUNT(MONTH(DOJ)) DESC
);

-- Task 78
SELECT PROF1 AS lang
FROM programmer
UNION
SELECT PROF2 AS lang
FROM programmer
GROUP BY PROF1, PROF2
ORDER BY lang DESC;

-- Task 79
SELECT PNAME
FROM programmer
WHERE GENDER LIKE 'M' AND SALARY < (
    SELECT AVG(SALARY)
    FROM programmer
    WHERE GENDER LIKE 'F'
);

-- Task 80
SELECT PNAME
FROM programmer
WHERE GENDER LIKE 'F' AND SALARY > (
    SELECT MAX(SALARY)
    FROM programmer
    WHERE GENDER LIKE 'M'
);

-- Task 81
SELECT PROF1 AS lang
FROM programmer
UNION
SELECT PROF2 AS lang
FROM programmer
GROUP BY PROF1, PROF2
ORDER BY lang DESC;

-- Task 82
SELECT *
FROM programmer
WHERE SALARY IN (
    SELECT SALARY
    FROM programmer
    GROUP BY SALARY
    HAVING COUNT(SALARY) > 1
)
ORDER BY SALARY;

-- Task 83
SELECT software.TITLE
FROM software
JOIN programmer ON software.PNAME = programmer.PNAME
WHERE GENDER LIKE 'M' AND SALARY > 3000;

-- Task 84
SELECT software.PNAME, software.TITLE, software.DEVELOPIN, software.SCOST, software.DCOST, software.SOLD
FROM software
JOIN programmer ON software.PNAME = programmer.PNAME
WHERE GENDER LIKE 'F' AND DEVELOPIN LIKE 'PASCAL';

-- Task 85
SELECT *
FROM programmer
WHERE YEAR(DOJ) > 1990;

-- Task 86
SELECT software.TITLE
FROM software
JOIN programmer ON software.PNAME = programmer.PNAME
JOIN studies ON software.PNAME = studies.PNAME
WHERE GENDER LIKE 'F' AND DEVELOPIN LIKE 'C' AND INSTITUTE LIKE 'PRAGATHI';

-- Task 87
SELECT software.PNAME, studies.INSTITUTE, COUNT(software.TITLE) AS packages, SUM(software.SOLD) AS copies_sold, SUM(software.SCOST) AS sales_value
FROM software
JOIN programmer ON software.PNAME = programmer.PNAME
JOIN studies ON software.PNAME = studies.PNAME
GROUP BY INSTITUTE, software.PNAME;

-- Task 88
SELECT software.PNAME, software.TITLE, software.DEVELOPIN, software.SCOST, software.DCOST, software.SOLD
FROM software
JOIN programmer ON software.PNAME = programmer.PNAME
JOIN studies ON software.PNAME = studies.PNAME
WHERE programmer.GENDER LIKE 'M' AND software.DEVELOPIN LIKE 'DBASE'
AND studies.INSTITUTE = (
    SELECT TOP 1 INSTITUTE
    FROM studies
    GROUP BY INSTITUTE
    ORDER BY COUNT(PNAME) DESC
);

-- Task 89
SELECT software.PNAME, software.TITLE, software.DEVELOPIN, software.SCOST, software.DCOST, software.SOLD
FROM software
JOIN programmer ON software.PNAME = programmer.PNAME
JOIN studies ON software.PNAME = studies.PNAME
WHERE (programmer.GENDER LIKE 'M' AND YEAR(programmer.DOB) < 1965)
OR (programmer.GENDER LIKE 'F' AND YEAR(programmer.DOB) > 1975);

-- Task 90
SELECT software.PNAME, software.TITLE, software.DEVELOPIN, software.SCOST, software.DCOST, software.SOLD
FROM software
JOIN programmer ON software.PNAME = programmer.PNAME
WHERE software.DEVELOPIN NOT IN (
    SELECT PROF1 AS lang
    FROM programmer
) AND software.DEVELOPIN NOT IN (
    SELECT PROF2 AS lang
    FROM programmer
);

-- Task 91
SELECT software.PNAME, software.TITLE, software.DEVELOPIN, software.SCOST, software.DCOST, software.SOLD
FROM software
JOIN programmer ON software.PNAME = programmer.PNAME
JOIN studies ON software.PNAME = studies.PNAME
WHERE programmer.GENDER LIKE 'M' AND INSTITUTE LIKE 'SABHARI';

-- Task 92
SELECT PNAME
FROM programmer
WHERE PNAME NOT IN (SELECT PNAME FROM software);

-- Task 93
SELECT SUM(DCOST)
FROM software
JOIN studies ON software.PNAME = studies.PNAME
WHERE INSTITUTE = 'APPLE';

-- Task 94
SELECT PNAME, DOJ
FROM programmer
WHERE DOJ IN (SELECT DOJ FROM programmer
              GROUP BY DOJ
              HAVING COUNT(DOJ) > 1)
ORDER BY DOJ;

-- Task 95
SELECT PNAME, PROF2
FROM programmer
WHERE PROF2 IN (SELECT PROF2 FROM programmer
                 GROUP BY PROF2
                 HAVING COUNT(PROF2) > 1)
ORDER BY PROF2;

-- Task 96
SELECT studies.INSTITUTE, SUM(SOLD * SCOST) AS sales_value
FROM software
JOIN studies ON software.PNAME = studies.PNAME
GROUP BY INSTITUTE;

-- Task 97
SELECT INSTITUTE
FROM studies
JOIN software ON software.PNAME = studies.PNAME
WHERE DCOST = (SELECT MAX(DCOST) FROM software);

-- Task 98
SELECT DISTINCT PROF1
FROM programmer
WHERE PROF1 NOT IN (SELECT DEVELOPIN FROM software)
UNION
SELECT DISTINCT PROF2
FROM programmer
WHERE PROF2 NOT IN (SELECT DEVELOPIN FROM software);

-- Task 99
SELECT software.PNAME, software.TITLE, software.SOLD, studies.COURSE
FROM software
JOIN studies ON software.PNAME = studies.PNAME
WHERE software.SOLD = (SELECT MAX(SOLD) FROM software);

-- Task 100
SELECT AVG(programmer.SALARY)
FROM programmer
JOIN software ON programmer.PNAME = software.PNAME
WHERE (SCOST * SOLD) > 50000;

-- Task 101
SELECT studies.INSTITUTE, COUNT(software.TITLE) AS Total_Packages
FROM software
JOIN studies ON studies.PNAME = software.PNAME
GROUP BY studies.INSTITUTE
HAVING MIN(studies.COURSE_FEE) = (SELECT MIN(COURSE_FEE) FROM studies);

-- Task 102
SELECT COUNT(software.TITLE), studies.INSTITUTE
FROM software
JOIN studies ON studies.PNAME = software.PNAME
WHERE software.DCOST = (SELECT MIN(DCOST) FROM software)
GROUP BY studies.INSTITUTE;

-- Task 103
SELECT COUNT(software.TITLE)
FROM software
JOIN programmer ON programmer.PNAME = software.PNAME
WHERE programmer.GENDER LIKE 'F' AND programmer.SALARY > (
    SELECT MAX(SALARY)
    FROM programmer
    WHERE programmer.GENDER LIKE 'M'
);

-- Task 104
SELECT studies.INSTITUTE, COUNT(software.TITLE) AS Total_Packages
FROM software
JOIN programmer ON programmer.PNAME = software.PNAME
JOIN studies ON studies.PNAME = software.PNAME
WHERE studies.INSTITUTE LIKE 'BDPS'
GROUP BY studies.INSTITUTE
HAVING MAX(DATEDIFF(DAY, programmer.DOJ, GETDATE())) = (
    SELECT MAX(DATEDIFF(DAY, programmer.DOJ, GETDATE()))
    FROM programmer
    JOIN studies ON studies.PNAME = software.PNAME
    WHERE studies.INSTITUTE LIKE 'BDPS'
);

-- Task 105
SELECT DISTINCT software.PNAME, studies.INSTITUTE
FROM software
JOIN studies ON studies.PNAME = software.PNAME
ORDER BY software.PNAME;

-- Task 106
SELECT PROF1, COUNT(DISTINCT programmer.PNAME) AS total_programmers, 
       SUM(CASE WHEN PROF1 = DEVELOPIN THEN 1 ELSE 0 END) AS packages_developed
FROM programmer
JOIN software ON programmer.PNAME = software.PNAME
GROUP BY PROF1
UNION
SELECT PROF2, COUNT(DISTINCT programmer.PNAME) AS total_programmers, 
       SUM(CASE WHEN PROF2 = DEVELOPIN THEN 1 ELSE 0 END) AS packages_developed
FROM programmer
JOIN software ON programmer.PNAME = software.PNAME
GROUP BY PROF2;

-- Task 107
SELECT programmer.PNAME, COUNT(software.TITLE) AS packages
FROM programmer
LEFT JOIN software ON software.PNAME = programmer.PNAME
GROUP BY programmer.PNAME;