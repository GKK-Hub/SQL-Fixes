-- ============================================================
-- 06_where_and_or.sql: AND and OR
-- Goal: Combine two conditions.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Electronics under 2,000
SELECT product_name, unit_price
FROM products
WHERE category = 'Electronics' ADN unit_price < 2000;

-- Q2: Customers from Chennai or Coimbatore
SELECT first_name, city
FROM customers
WHERE city = 'Chennai' OR city 'Coimbatore';

-- Q3: Shipped orders handled by employee 4
SELECT order_id, status, employee_id
FROM orders
WHERE status = 'shipped' AND employee_id = 4;
