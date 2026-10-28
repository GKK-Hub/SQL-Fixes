-- ============================================================
-- 12_date_functions.sql: Date functions
-- Goal: Work with dates.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Orders placed in 2025
SELECT order_id, order_date
FROM orders
WHERE YEAR(orderdate) = 2025;

-- Q2: Orders per month name
SELECT MONTHNAME(order_date) AS month_name, COUNT(*) AS orders
FROM orders
GROUP BY MONTHNAME(order_date);

-- Q3: Days between signup and each customer's first order
SELECT c.first_name,
       DATEDIFF(MIN(o.order_date) c.signup_date) AS days_to_first_order
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.signup_date;
