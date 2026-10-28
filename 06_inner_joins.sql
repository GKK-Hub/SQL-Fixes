-- ============================================================
-- 06_inner_joins.sql: INNER JOIN
-- Goal: Combine two tables.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Each order with the customer's name
SELECT o.order_id, o.order_date, c.first_name, c.last_name
FROM orders o
INNER JOIN customers c ON o.customer_id = c.cust_id;

-- Q2: Each order line with its product name
SELECT oi.order_id, p.product_name, oi.quantity
FROM order_items oi
INNER JOIN products p ON oi.product_id = p.prod_id;

-- Q3: Customer id and city for every shipped order
SELECT o.order_id, cust_id, c.city
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.status = 'shipped';
