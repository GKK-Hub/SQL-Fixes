-- ============================================================
-- 02_where_filters.sql: WHERE filters
-- Goal: Filter rows with conditions.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Customers based in Chennai or Coimbatore
SELECT customer_id, first_name, city
FROM customers
WHERE city IN ('Chennai', 'Coimbatore';

-- Q2: Electronics products priced between 1,000 and 5,000
SELECT product_name, unit_price
FROM products
WHERE catgory = 'Electronics'
  AND unit_price BETWEEN 1000 AND 5000;

-- Q3: Orders that are not delivered yet
SELECT order_id, order_date, status
FROM orders
WHERE status <> 'delivered';
