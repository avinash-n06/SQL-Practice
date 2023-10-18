CREATE TABLE Orders (
    order_id INT,
    order_date DATE,
    amount INT,
    customer_id INT
);

INSERT INTO Orders (order_id, order_date, amount, customer_id)
VALUES
    (101, '2021-07-04', 2450, 1),
    (201, '2018-09-13', 5670, 3),
    (301, '2020-02-02', 2000, 5),
    (401, '2019-01-05', 3500, 6),
    (501, '2021-06-03', 300, 7);


--Use the inbuilt functions and find the minimum, maximum and average amount from the orders
--table

SELECT MIN(amount) AS Minimum_Amount FROM Orders;
SELECT MAX(amount) AS Maximum_Amount FROM Orders;
SELECT AVG(amount) AS Average_Amount FROM Orders;


--Create a user-defined function, which will multiply the given number with 10
CREATE FUNCTION multiply(@num INT)
RETURNS INT
AS
BEGIN
    RETURN @num * 10;
END;

--Use the case statement to check if 100 is less than 200, greater than 200 or equal to 200 and
--print the corresponding value
SELECT
    CASE
        WHEN 100 < 200 THEN '100 is less than 200'
        WHEN 100 > 200 THEN '100 is greater than 200'
        WHEN 100 = 200 THEN '100 is equal to 200'
    END AS Result;
