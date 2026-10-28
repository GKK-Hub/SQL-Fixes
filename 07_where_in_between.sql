-- ============================================================
-- 07_where_in_between.sql: IN and BETWEEN
-- Goal: Match a list or a range.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Customers from Kochi, Pune or Delhi
SELECT first_name, city
FROM customers
WHERE city IN ('Kochi', 'Pune', 'Delhi';

-- Q2: Products priced between 500 and 2,000
SELECT product_name, unit_price
FROM products
WHERE unit_price BETWEN 500 AND 2000;

-- Q3: Orders that are pending or shipped
SELECT order_id, status
FROM orders
WHERE status IN ('pending', 'shipped');
