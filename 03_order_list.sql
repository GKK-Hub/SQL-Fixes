-- ============================================================
-- 03_order_list.sql: Order list
-- Goal: Select columns from the orders table.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Every order with its date
SELECT order_id order_date,
FROM orders;

-- Q2: Order status
SELECT order_id, status
FROM orders;
-- Q3: Which customer placed each order
SELECT order_id, customer_id
FROM orders;
