--list only german customers
SELECT *
FROM customers
WHERE country ='Germany'

--find all customers whose score is higher than 500
SELECT *
FROM customers
WHERE score > 500

--find all customers whose score is less than 500
SELECT *
FROM customers
WHERE score < 500

--find all customers whose score is less than or equal 500
SELECT *
FROM customers
WHERE score <= 500

--find all customers whose score is higher or equal than 500
SELECT *
FROM customers
WHERE score >= 500

--find all non-german customers
SELECT *
FROM customers
WHERE country !='Germany'
--or <> operator

--find all customers who come from germany AND whose score is less than 400
SELECT *
FROM customers
WHERE country = 'Germany' AND score <400

--find all customers who come from germany OR whose score is less than 400
SELECT *
FROM customers
WHERE country = 'Germany' OR score <400

--find all customer whose score is NOT less than 400
SELECT *
FROM customers
WHERE NOT score <400

--find all customers whose score falls in the range between 100 and 500
SELECT *
FROM customers
WHERE score BETWEEN 100 and 500

-- find all customers whose ID is equal to 1,2 or 5
SELECT *
FROM customers
WHERE customer_id IN (1,2,5)

--Find all customers whose first name starts with M
SELECT *
FROM customers
WHERE first_name LIKE 'M%'

--Find all customers whose first name ends with N
SELECT *
FROM customers
WHERE first_name LIKE '%n'

--find all customers whose first name contains R
SELECT *
FROM customers
WHERE first_name LIKE '%r%'

--find all customers whose first name contains R in the 3rd position
SELECT *
FROM customers
WHERE first_name LIKE '__r%'