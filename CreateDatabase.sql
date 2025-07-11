-- Drop the database if it exists (must be the only connection to the database)
USE master;
GO

IF DB_ID('db_sql_tutorial') IS NOT NULL
BEGIN
    ALTER DATABASE db_sql_tutorial SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE db_sql_tutorial;
END
GO

-- Create the database
CREATE DATABASE db_sql_tutorial;
GO

USE db_sql_tutorial;
GO

-- Create table customers
IF OBJECT_ID('dbo.customers', 'U') IS NOT NULL
    DROP TABLE dbo.customers;
GO

CREATE TABLE dbo.customers (
  customer_id INT NOT NULL IDENTITY(1,1),
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  country VARCHAR(50) NULL,
  score INT NULL,
  PRIMARY KEY (customer_id)
);
GO

-- Insert customers data (don't specify identity column in INSERT)
INSERT INTO customers (first_name, last_name, country, score) 
VALUES 
('Maria', 'Cramer', 'Germany', 350),
('John', 'Steel', 'USA', 900),
('Georg', 'Pipps', 'UK', 750),
('Martin', 'Müller', 'Germany', 500),
('Peter', 'Franken', 'USA', NULL);
GO

-- Create table orders
IF OBJECT_ID('dbo.orders', 'U') IS NOT NULL
    DROP TABLE dbo.orders;
GO

CREATE TABLE dbo.orders (
  order_id INT NOT NULL IDENTITY(1001,1),
  customer_id INT NOT NULL,
  order_date DATE NULL,
  quantity INT NULL,
  PRIMARY KEY (order_id)
);
GO

-- Insert orders data (don't specify identity column in INSERT)
INSERT INTO orders (customer_id, order_date, quantity)
VALUES 
(1, '2021-01-11', 250),
(2, '2021-04-05', 1150),
(3, '2021-06-18', 500),
(6, '2021-08-31', 750);
GO

-- Create table employees
IF OBJECT_ID('dbo.employees', 'U') IS NOT NULL
    DROP TABLE dbo.employees;
GO

CREATE TABLE dbo.employees (
  emp_id INT NOT NULL IDENTITY(1,1),
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  emp_country VARCHAR(50) NULL,
  salary INT NULL,
  PRIMARY KEY (emp_id)
);
GO

-- Insert employees data (don't specify identity column in INSERT)
INSERT INTO employees (first_name, last_name, emp_country, salary)
VALUES 
('John', 'Steel', 'USA', 55000),
('Ann', 'Labrune', 'France', 75000),
('Marie', 'Bertrand', 'Brazil', 75000),
('Georg', 'Afonso', 'UK', 75000),
('Marie', 'Steel', 'UK', 75000);
GO

SELECT * FROM customers
SELECT * FROM orders
SELECT * FROM employees