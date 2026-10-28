-- ============================================================
-- 04_where_equals.sql: WHERE with =
-- Goal: Filter rows that match a value.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Customers from Chennai
SELECT first_name, city
FROM customers
WHERE city 'Chennai';

-- Q2: Products in the Furniture category
SELECT product_name, category
FROM products
WHERE category = 'Furniture;

-- Q3: Cancelled orders
SELECT order_id, status
FROM orders
WHERE status = 'cancelled';
