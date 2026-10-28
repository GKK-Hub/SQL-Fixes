-- ============================================================
-- 05_group_by_having.sql: GROUP BY and HAVING
-- Goal: Aggregate per group and filter groups.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Number of products in each category
SELECT category, product_name, COUNT(*) AS product_count
FROM products
GROUP BY category;

-- Q2: Customers per city, only cities with 3 or more customers
SELECT city, COUNT(*) AS customers
FROM customers
WHERE COUNT(*) >= 3
GROUP BY city;

-- Q3: Number of orders per status
SELECT status, COUNT(order_id) AS orders
FROM orders
GROUP BY status;
