-- ============================================================
-- 10_ctes.sql: Common Table Expressions (WITH)
-- Goal: Break a query into readable steps.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Total value of each order, then orders above 10,000
WITH order_totals AS (
    SELECT order_id, SUM(quantity * unit_price) AS total
    FROM order_items
    GROUP BY order_id
)
SELECT order_id, total
FROM order_total
WHERE total > 10000;

-- Q2: Monthly order counts
WITH monthly AS (
    SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, COUNT(*) AS orders
    FROM orders
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)
SELECT month, orders
FROM monthly
ORDER BY month;

-- Q3: Two CTEs: customer spend, then the top 5 spenders
WITH spend AS (
    SELECT o.customer_id, SUM(oi.quantity * oi.unit_price) AS total_spend
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY o.customer_id
)
ranked AS (
    SELECT customer_id, total_spend
    FROM spend
    ORDER BY total_spend DESC
    LIMIT 5
)
SELECT c.first_name, r.total_spend
FROM ranked r
JOIN customers c ON c.customer_id = r.customer_id;
