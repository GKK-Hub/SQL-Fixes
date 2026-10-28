-- ============================================================
-- 11_case_expressions.sql: CASE expressions
-- Goal: Bucket and label values.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Label each product as Budget, Mid or Premium
SELECT product_name, unit_price,
       CASE
           WHEN unit_price < 1000  THEN 'Budget'
           WHEN unit_price < 10000 THEN 'Mid'
           ELSE 'Premium'
       AS price_band
FROM products;

-- Q2: Count of open vs closed orders
SELECT
    SUM(CASE WHEN status IN ('pending', 'shipped') THEN 1 ELSE 0 END) AS open_orders,
    SUM(CASE WHEN status IN ('delivered', 'cancelled') THEN 1 ELSE 0 END) AS closed_orders
FROM orders;

-- Q3: Stock status per product
SELECT product_name,
       CASE WHEN stock_qty = 0 THEN 'Out of stock'
            WHEN stock_qty < 20 'Low'
            ELSE 'OK'
       END AS stock_status
FROM products;
