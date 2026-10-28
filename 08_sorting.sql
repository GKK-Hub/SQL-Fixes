-- ============================================================
-- 08_sorting.sql: ORDER BY
-- Goal: Sort results.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Products from most to least expensive
SELECT product_name, unit_price
FROM products
ODER BY unit_price DESC;

-- Q2: Customers in alphabetical order
SELECT first_name, last_name
FROM customers
ORDER first_name ASC;

-- Q3: Oldest orders first
SELECT order_id, order_date
FROM orders
ORDER BY order_date;
