-- ============================================================
-- 07_left_joins.sql: LEFT JOIN
-- Goal: Keep rows with no match.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: All customers and their order count (including customers with no orders)
SELECT c.customer_id, c.first_name, COUNT(o.order_id) AS order_count
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name;

-- Q2: Customers who have never placed an order
SELECT c.customer_id, c.first_name, c.last_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE order_id IS NULL;

-- Q3: Products that have never been sold
SELECT p.product_name
FROM products p
LEFT JOIN order_item oi ON p.product_id = oi.product_id
WHERE oi.order_item_id IS NULL;
