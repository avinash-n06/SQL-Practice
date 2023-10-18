create table Orders(order_id int, order_date date, amount int, customer_id int);
insert into Orders (order_id, order_date, amount, customer_id)
values (101, '2022-07-04',2450, 1),
		(201, '2023-09-13',5670,3),
		(301,'2020-02-02',2000,5),
		(401,'2023-01-05',3500,6),
		(501,'2021-06-03',300,7)
--Arrange the ‘Orders’ dataset in decreasing order of amount
SELECT * FROM Orders ORDER BY amount DESC;

--Create a table with name ‘Employee_details1’ and comprising of these columns – ‘Emp_id’,
--‘Emp_name’, ‘Emp_salary’. Create another table with name ‘Employee_details2’, which
--comprises of same columns as first table.
-- Table Employee_details1
CREATE TABLE Employee_details1 (Emp_id INT, Emp_name VARCHAR(20), Emp_salary INT);

INSERT INTO Employee_details1 (Emp_id, Emp_name, Emp_salary)
VALUES
    (101, 'Arjun', 40000),
    (201, 'Arvind', 25000),
    (301, 'Alan', 20000),
    (401, 'Alex', 35000),
    (501, 'Aswin', 30000);

-- Table Employee_details2
CREATE TABLE Employee_details2 (Emp_id INT, Emp_name VARCHAR(20), Emp_salary INT);

INSERT INTO Employee_details2 (Emp_id, Emp_name, Emp_salary)
VALUES
    (101, 'Arjun', 40000),
    (211, 'Sam', 45000),
    (305, 'Max', 28000),
    (401, 'Alex', 35000),
    (511, 'Saran', 32000);

--Apply the union operator on these two tables
SELECT * FROM Employee_details1
UNION
SELECT * FROM Employee_details2;

--Apply the intersect operator on these two tables
SELECT * FROM Employee_details1
INTERSECT
SELECT * FROM Employee_details2;

--Apply the except operator on these two tables
SELECT * FROM Employee_details1
EXCEPT
SELECT * FROM Employee_details2;
