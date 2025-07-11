----AGREGATE FUNCTIONS----

--find the total number of customers
SELECT COUNT(*) AS total_customers
FROM customers

--find the total quantity of all orders
SELECT SUM(quantity) AS sum_quantity
FROM orders

--find the avarage score of all customers
SELECT AVG(score) AS avg_score
FROM customers

--find the highest score of all customers
SELECT MAX(score) AS max_score
FROM customers

--find the lowest score of all customers
SELECT MIN(score) AS min_score
FROM customers

-- find the earliest and latest orders
SELECT
    MAX(order_date) AS latest_order,
    MIN(order_date) AS earliest_order
FROM orders

----STRING FUNCTIONS----

--list all customers names, where the name is combination of first and last name
SELECT CONCAT(first_name,' ',last_name) AS customer_full_name
FROM customers

--list the first name of all customers in uppercase and lowercase
SELECT
    UPPER(first_name) AS upper_first_name,
    LOWER(first_name) AS lower_first_name
FROM customers

--List all last name of all customers and remove all the white spaces in the names
SELECT TRIM(last_name) as clean_last_name
FROM customers

--find the length of last name of all customers
SELECT
    TRIM(last_name) as clean_last_name,
    LEN(last_name) as length_last_name
FROM customers

--substract 3 characters from the last name of all customers, starting from the 2nd position
SELECT
    last_name,
    SUBSTRING(last_name,2,3) as sub_last_name
FROM customers