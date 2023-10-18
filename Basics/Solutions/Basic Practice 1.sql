--Create a customer table which comprises of these columns – ‘customer_id’, ‘first_name’,
--‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’
CREATE TABLE Customers (
    customer_id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(50),
    address VARCHAR(30),
    city VARCHAR(15),
    state VARCHAR(15),
    zip INT
);

--Insert 5 new records into the table
INSERT INTO Customers (customer_id, first_name, last_name, email, address, city, state, zip)
VALUES
    (1, 'Ram', 'A', 'ram@gmail.com', 'JP_Nagar', 'Chennai', 'Tamil Nadu', 642127),
    (2, 'Raj', 'S', 'raj@gmail.com', '4th cross', 'Coimbatore', 'Tamil Nadu', 642120),
    (3, 'Samir', 'N', 'samir@gmail.com', '5th street', 'Madurai', 'Tamil Nadu', 642129),
    (4, 'Saran', 'P', 'saran@gmail.com', '12/3 Main lane', 'Udumalpet', 'Tamil Nadu', 642122),
    (5, 'Sahil', 'K', 'sahil@yahoo.com', '11/6 New lane', 'Erode', 'Tamil Nadu', 642126);


--Select only the ‘first_name’ & ‘last_name’ columns from the customer table
SELECT first_name, last_name FROM Customers;

--Select those records where ‘first_name’ starts with “G” and city is 'San Jose'
SELECT * FROM Customers WHERE first_name LIKE 'G%' AND city = 'San Jose';

