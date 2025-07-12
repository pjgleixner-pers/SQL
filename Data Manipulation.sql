--insert new custommer Anna Nixon from UK
INSERT INTO dbo.customers
    (first_name, last_name, country, score)
VALUES
    ('Anna', 'Nixon', 'UK', NULL);
GO

SELECT *
FROM customers

--insert Max Lang
INSERT INTO dbo.customers
    (first_name, last_name, country, score)
VALUES
    ('Max', 'Lang', NULL , NULL);
GO

SELECT *
FROM customers

--Change the country for customerID 7 to Germany
UPDATE customers
SET country = 'Germany'
WHERE customer_id = 7
GO

SELECT *
FROM customers

--change the score of the custommer Anna to 100 and change her country from UK to USA
UPDATE customers
SET country = 'USA', score = 100
WHERE first_name = 'Anna'
GO

SELECT *
FROM customers

--Delethe Anna and Max
DELETE FROM customers
WHERE first_name IN ('Anna','Max')
GO

SELECT *
FROM customers

--delete all data in customers
TRUNCATE TABLE customers

SELECT *
FROM customers