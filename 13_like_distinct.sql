-- ============================================================
-- 13_like_distinct.sql: LIKE and DISTINCT
-- Goal: Search text and remove duplicates.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Customers whose first name starts with A
SELECT first_name, last_name
FROM customers
WHERE first_name LIEK 'A%';

-- Q2: All the different product categories
SELECT DISTINCT category
FROM products

-- Q3: Products with 'Desk' anywhere in the name
SELECT product_name
FROM products
WHERE product_name LIKE '%Desk%';
