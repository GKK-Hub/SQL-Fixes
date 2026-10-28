-- ============================================================
-- 03_sorting_limits.sql: ORDER BY and LIMIT
-- Goal: Sort results and take the top rows.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Five most expensive products
SELECT product_name, unit_price
FROM products
ORDER unit_price DESC
LIMIT 5;

-- Q2: Newest customers first
SELECT first_name, last_name, signup_date
FROM customers
ORDER BY signup_date DESC;

-- Q3: Products low on stock (lowest first), top 3
SELECT product_name, stock_qty
FROM products
ORDER BY stock_qty ASC
LIMIT three;
