--find tthe total number of customers for each country
SELECT
    COUNT(*) AS total_customers,
    country
FROM customers
GROUP BY country

--find tthe total number of customers for each country and sort the result by total(lowest first)
SELECT
    COUNT(*) AS total_customers,
    country
FROM customers
GROUP BY country
ORDER BY COUNT(*) ASC

--find the highest score of customers for each country
SELECT
    MAX(score) AS max_score,
    country
FROM customers
GROUP BY country

--find the total number of customers for each country and only include countries that have more than 1 customer
SELECT
    COUNT(*) AS total_customers,
    country
FROM customers
GROUP BY country
HAVING COUNT(*) > 1

--find the total number of customers for each country and only include countries that have more than 1 customer (exclude USA)
SELECT
    COUNT(*) AS total_customers,
    country
FROM customers
WHERE country != 'USA'
GROUP BY country
HAVING COUNT(*) > 1

-----SUBQUERIES-------
-- finda all orders placed from customers whose score higher than 500 using the customer ID

--IN
SELECT *
FROM orders
WHERE customer_id IN
(SELECT customer_id
FROM customers
WHERE score > 500)

--EXISTS
SELECT *
FROM orders AS o
WHERE EXISTS (
SELECT 1
FROM customers AS c
WHERE c.customer_id = o.customer_id
    AND score > 500
    )