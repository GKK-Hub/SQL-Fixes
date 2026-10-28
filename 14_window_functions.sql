-- ============================================================
-- 14_window_functions.sql: Window functions
-- Goal: Rank and run totals without collapsing rows.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Rank products by price within each category
SELECT product_name, category, unit_price,
       RANK() OVER (PARTITION category ORDER BY unit_price DESC) AS price_rank
FROM products;

-- Q2: Running total of order value by date
WITH order_totals AS (
    SELECT o.order_id, o.order_date, SUM(oi.quantity * oi.unit_price) AS total
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY o.order_id, o.order_date
)
SELECT order_id, order_date, total,
       SUM(total) OVER (ORDER BY order_date, order_id) AS running_total
FROM order_totals;

-- Q3: Most expensive product in each category
SELECT product_name, category, unit_price,
       ROW_NUMBER() OVER (PARTITION BY category ORDER BY unit_price DESC) AS rn
FROM products
WHERE rn = 1;
