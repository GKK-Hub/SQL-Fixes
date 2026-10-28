-- ============================================================
-- 09_limit_top_n.sql: LIMIT
-- Goal: Take only the top rows.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: The 3 most expensive products
SELECT product_name, unit_price
FROM products
ORDER BY unit_price DESC
LIMT 3;

-- Q2: The 5 newest customers
SELECT first_name, signup_date
FROM customers
ORDER BY signup_date DESC
LIMIT five;

-- Q3: The 2 products with the least stock
SELECT product_name, stock_qty
FROM products
ORDER BY stock_qty
LIMIT 2;
