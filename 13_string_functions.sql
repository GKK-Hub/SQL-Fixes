-- ============================================================
-- 13_string_functions.sql: String functions
-- Goal: Clean and combine text.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Full name in one column
SELECT CONCAT(first_name, ' ', last_name AS full_name
FROM customers;

-- Q2: Email domain for each customer
SELECT email
       SUBSTRING_INDEX(email, '@', -1) AS domain
FROM customers;

-- Q3: Product names in upper case with their length
SELECT UPPER(product_name) AS name_upper,
       LENGTH(product_name) AS name_length
FROM products
ORDER BY name_length DESC;
