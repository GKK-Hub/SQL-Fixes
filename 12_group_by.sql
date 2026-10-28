-- ============================================================
-- 12_group_by.sql: GROUP BY
-- Goal: Count or total per group.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Number of products in each category
SELECT category, COUNT(*) AS products
FROM products
GROUP category;

-- Q2: Number of customers in each city
SELECT city, COUNT(*) AS customers
FROM customers
GROPU BY city;

-- Q3: Number of orders in each status
SELECT status, COUNT(*) AS orders
FROM orders
GROUP BY status;
