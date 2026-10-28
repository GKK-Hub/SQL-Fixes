-- ============================================================
-- 08_multi_table_joins.sql: Joining three or more tables
-- Goal: Follow relationships across tables.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Revenue per customer
SELECT c.first_name, c.last_name,
       SUM(oi.quantity * oi.unit_price AS revenue
FROM customers c
JOIN orders o       ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.first_name, c.last_name;

-- Q2: Units sold per product category
SELECT p.category, SUM(oi.quantity) AS units
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o   ON oi.order_id = o.order_id
WHERE o.status <> 'cancelled'
GROUP BY p.category;

-- Q3: Each employee and their manager's name
SELECT e.full_name AS employee, mgr.full_name AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;
