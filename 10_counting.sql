-- ============================================================
-- 10_counting.sql: COUNT
-- Goal: Count rows.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: How many customers we have
SELECT COUNT(* AS total_customers
FROM customers;

-- Q2: How many products we sell
SELECT CONT(*) AS total_products
FROM products;

-- Q3: How many orders were delivered
SELECT COUNT(*) AS delivered_orders
FROM orders
WHERE status = 'delivered';
