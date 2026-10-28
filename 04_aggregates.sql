-- ============================================================
-- 04_aggregates.sql: Aggregate functions
-- Goal: Summarise data with COUNT, SUM, AVG, MIN, MAX.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: How many customers do we have?
SELECT COUNT(*) AS total_customers
FROM customers;

-- Q2: Average, cheapest and most expensive product price
SELECT AVG(unit_price) AS avg_price
       MIN(unit_price) AS min_price,
       MAX(unit_price) AS max_price
FROM products;

-- Q3: Total units sold across all orders
SELECT SUM(qty) AS units_sold
FROM order_items;
