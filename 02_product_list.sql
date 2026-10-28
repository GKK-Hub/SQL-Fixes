-- ============================================================
-- 02_product_list.sql: Product list
-- Goal: Select columns from the products table.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Product names and prices
SELECT product_name, unit_price
FROM products;

-- Q2: Product categories
SELECT product_name, category
FROM products;

-- Q3: How much stock we have
SELECT product_name, stock_qty
FROM products;
