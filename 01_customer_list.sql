-- ============================================================
-- 01_customer_list.sql: Customer list
-- Goal: Select columns from the customers table.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Every customer's first and last name
SELECT first_name, last_name
FROM customers;

-- Q2: Customer emails
SELECT first_name, email
FROM customers;

-- Q3: When each customer signed up
SELECT first_name, signup_date
FROM customers;
