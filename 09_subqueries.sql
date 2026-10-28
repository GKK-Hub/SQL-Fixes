-- ============================================================
-- 09_subqueries.sql: Subqueries
-- Goal: Use a query inside another query.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Products priced above the average price
SELECT product_name, unit_price
FROM products
WHERE unit_price > AVG(unit_price);

-- Q2: Customers who placed at least one order
SELECT first_name, last_name
FROM customers
WHERE customer_id IN (SELECT customer_id FROM orders);

-- Q3: Order count per customer using a derived table
SELECT t.customer_id, t.order_count
FROM (
    SELECT customer_id, COUNT(*) AS order_count
    FROM orders
    GROUP BY customer_id
)
WHERE t.order_count >= 3;
