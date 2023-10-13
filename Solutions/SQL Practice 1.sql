-- Create Employee_table
CREATE TABLE Employee_table (
    Employee_id INT PRIMARY KEY,
    First_name VARCHAR(30),
    Last_name VARCHAR(30),
    Salary INT,
    Joining_date DATETIME,
    Department VARCHAR(30)
);

-- Insert data into Employee_table
INSERT INTO Employee_table (Employee_id, First_name, Last_name, Salary, Joining_date, Department)
VALUES
    (1, 'Anika', 'Arora', 100000, '2020-02-14 9:00:00', 'HR'),
    (2, 'Veena', 'Verma', 80000, '2011-06-15 9:00:00', 'Admin'),
    (3, 'Vishal', 'Singhal', 300000, '2020-02-16 9:00:00', 'HR'),
    (4, 'Sushanth', 'Singh', 500000, '2020-02-17 9:00:00', 'Admin'),
    (5, 'Bhupal', 'Bhati', 500000, '2011-06-18 9:00:00', 'Admin'),
    (6, 'Dheeraj', 'Diwan', 200000, '2011-06-19 9:00:00', 'Account'),
    (7, 'Karan', 'Kumar', 75000, '2020-01-14 9:00:00', 'Account'),
    (8, 'Chandrika', 'Chauhan', 90000, '2011-04-15 9:00:00', 'Admin');

-- Create Employee_Bonus_Table
CREATE TABLE Employee_Bonus_Table (
    Employee_ref_id INT,
    Bonus_Amount INT,
    Bonus_Date DATETIME
);

-- Insert data into Employee_Bonus_Table
INSERT INTO Employee_Bonus_Table (Employee_ref_id, Bonus_Amount, Bonus_Date)
VALUES
    (1, 5000, '2020-02-16'),
    (2, 3000, '2011-06-16'),
    (3, 4000, '2020-02-16'),
    (1, 4500, '2020-02-16'),
    (2, 3500, '2011-06-16');

-- Create Employee_Title_Table
CREATE TABLE Employee_Title_Table (
    Employee_ref_id INT,
    Employee_title VARCHAR(20),
    Affective_Date DATETIME
);

-- Insert data into Employee_Title_Table
INSERT INTO Employee_Title_Table (Employee_ref_id, Employee_title, Affective_Date)
VALUES
    (1, 'Manager', '2016-02-20'),
    (2, 'Executive', '2016-02-20'),
    (8, 'Executive', '2016-06-11'),
    (5, 'Manager', '2016-06-11'),
    (4, 'Asst. Manager', '2016-06-11'),
    (7, 'Executive', '2016-06-11'),
    (6, 'Lead', '2016-06-11'),
    (3, 'Lead', '2016-06-11');

-- Task 1
SELECT First_name AS Employee_name FROM Employee_table;

-- Task 2
SELECT UPPER(Last_name) FROM Employee_table;

-- Task 3
SELECT DISTINCT Department FROM Employee_table;

-- Task 4
SELECT SUBSTRING(Last_name, 1, 3) FROM Employee_table;

-- Task 5
SELECT DISTINCT Department, LEN(Department) FROM Employee_table;

-- Task 6
SELECT First_name + ' ' + Last_name AS FULL_NAME FROM Employee_table;

-- Task 7
SELECT * FROM Employee_table ORDER BY First_name;

-- Task 8
SELECT * FROM Employee_table ORDER BY First_name, Department DESC;

-- Task 9
SELECT * FROM Employee_table WHERE First_name IN ('Veena', 'Karan');

-- Task 10
SELECT * FROM Employee_table WHERE Department = 'Admin';

-- Task 11
SELECT * FROM Employee_table WHERE First_name LIKE '%v%';

-- Task 12
SELECT * FROM Employee_table WHERE Salary BETWEEN 100000 AND 500000;

-- Task 13
SELECT * FROM Employee_table WHERE YEAR(Joining_date) = 2020 AND MONTH(Joining_date) = 2;

-- Task 14
SELECT * FROM Employee_table WHERE Salary >= 50000 AND Salary <= 100000;

-- Task 15
SELECT Department, COUNT(Employee_id) AS Num_Employees
FROM Employee_table
GROUP BY Department
ORDER BY Num_Employees DESC;

-- Task 16
SELECT *
FROM Employee_table
FULL OUTER JOIN Employee_Title_Table ON Employee_table.Employee_id = Employee_Title_Table.Employee_ref_id
WHERE Employee_title = 'Manager';

-- Task 17
SELECT Employee_ref_id, COUNT(Employee_ref_id)
FROM Employee_Bonus_Table
GROUP BY Employee_ref_id
HAVING COUNT(Employee_ref_id) > 1;

-- Task 18
SELECT * FROM Employee_table WHERE Employee_id % 2 != 0;

-- Task 19
SELECT * INTO Employee_table2 FROM Employee_table;

-- Task 20
SELECT TOP 2 First_name, Salary
FROM Employee_table
ORDER BY Salary DESC;

-- Task 21
SELECT *
FROM Employee_table
GROUP BY Salary
HAVING COUNT(Salary) > 1;

-- Task 22
SELECT *
FROM (
    SELECT First_name, Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS salary_rank
    FROM Employee_table
) AS salary_rank
WHERE salary_rank = 2;

-- Task 23
SELECT TOP 50 PERCENT *
FROM Employee_table;

-- Task 24
SELECT Department
FROM Employee_table
GROUP BY Department
HAVING COUNT(*) > 4;

-- Task 25
SELECT Department, COUNT(Department) AS number_of_employees
FROM Employee_table
GROUP BY Department;

-- Task 26
SELECT First_name, Salary, Department
FROM Employee_table
WHERE Salary IN (
    SELECT MAX(Salary)
    FROM Employee_table
    GROUP BY Department
);

-- Task 27
SELECT First_name
FROM Employee_table
WHERE Salary IN (
    SELECT MAX(Salary)
    FROM Employee_table
);

-- Task 28
SELECT Department, AVG(Salary)
FROM Employee_table
GROUP BY Department;

-- Task 29
SELECT TOP 1 First_name, Bonus_Amount
FROM Employee_table a
JOIN Employee_Bonus_Table b ON a.Employee_id = b.Employee_ref_id
ORDER BY Bonus_Amount DESC;

-- Task 30
SELECT First_name, Employee_title
FROM Employee_table a
JOIN Employee_Title_Table b ON a.Employee_id = b.Employee_ref_id;
