-- ============================================================
-- 11_sum_avg.sql: SUM, AVG, MIN, MAX
-- Goal: Add up and average numbers.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Total units in stock
SELECT SUM(stock_qty) AS total_stock
FROM products;

-- Q2: Average product price
SELECT AVG(unit_price AS avg_price
FROM products;

-- Q3: Cheapest and most expensive product price
SELECT MIN(unit_price) AS cheapest MAX(unit_price) AS priciest
FROM products;
