--List customer ID, first name, order ID,quantity. Exclude the customers who have not placed orders
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
FROM customers AS c
    INNER JOIN orders AS o
    ON c.customer_id = o.customer_id

--List customer ID, first name, order ID,quantity. Include the customers who have not placed orders
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
FROM customers AS c
    LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id


--List customer ID, first name, order ID,quantity. Regardless of whether there is a matching customer
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
FROM customers AS c
    RIGHT JOIN orders AS o
    ON c.customer_id = o.customer_id

--List customer ID, first name, order ID,quantity. Include everything, All customers and all orders
SELECT
    c.customer_id,
    c.first_name,
    o.order_id,
    o.quantity
FROM customers AS c
    FULL JOIN orders AS o
    ON c.customer_id = o.customer_id

--OR
    SELECT
        c.customer_id,
        c.first_name,
        o.order_id,
        o.quantity
    FROM customers AS c
        LEFT JOIN orders AS o
        ON c.customer_id = o.customer_id
UNION
    SELECT
        c.customer_id,
        c.first_name,
        o.order_id,
        o.quantity
    FROM customers AS c
        RIGHT JOIN orders AS o
        ON c.customer_id = o.customer_id

--List first name, last name and country of all persons from customers and employees

    SELECT
        first_name AS per_first_name,
        last_name AS per_last_name,
        country AS per_country
    FROM customers
UNION
    SELECT
        first_name,
        last_name,
        emp_country
    FROM employees

