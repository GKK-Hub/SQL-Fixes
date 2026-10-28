-- ============================================================
-- 05_where_numbers.sql: WHERE with numbers
-- Goal: Filter with >, < and >=.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Products that cost more than 5,000
SELECT product_name, unit_price
FROM products
WHERE unit_price > ;

-- Q2: Products with fewer than 30 in stock
SELECT product_name, stock_qty
FROM products
WHER stock_qty < 30;

-- Q3: Order lines with 3 or more units
SELECT order_id, product_id, quantity
FROM order_items
WHERE quantity >= 3;
