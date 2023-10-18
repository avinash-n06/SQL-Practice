--Create an ‘Orders’ table which comprises of these columns – ‘order_id’, ‘order_date’, ‘amount’,
--‘customer_id’
CREATE TABLE Orders (
    order_id INT,
    order_date DATE,
    amount INT,
    customer_id INT
);

INSERT INTO Orders (order_id, order_date, amount, customer_id)
VALUES
    (101, '2023-07-06', 2450, 1),
    (102, '2023-08-18', 5670, 3),
    (301, '2023-09-22', 2000, 5),
    (411, '2023-10-15', 3500, 6),
    (531, '2023-11-01', 300, 7);

-- Make an inner join on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column
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
INSERT INTO Customers (customer_id, first_name, last_name, email, address, city, state, zip)
VALUES
    (1, 'Ram', 'A', 'ram@gmail.com', 'JP_Nagar', 'Chennai', 'Tamil Nadu', 642127),
    (2, 'Raj', 'S', 'raj@gmail.com', '4th cross', 'Coimbatore', 'Tamil Nadu', 642120),
    (3, 'Samir', 'N', 'samir@gmail.com', '5th street', 'Madurai', 'Tamil Nadu', 642129),
    (4, 'Saran', 'P', 'saran@gmail.com', '12/3 Main lane', 'Udumalpet', 'Tamil Nadu', 642122),
    (5, 'Sahil', 'K', 'sahil@yahoo.com', '11/6 New lane', 'Erode', 'Tamil Nadu', 642126);

SELECT * FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;

--Make left and right joins on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column
SELECT * FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

SELECT * FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

--Update the ‘Orders’ table, set the amount to be 100 where ‘customer_id’ is 3
UPDATE Orders
SET amount = 100
WHERE customer_id = 3;