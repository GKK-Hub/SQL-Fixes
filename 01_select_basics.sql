-- ============================================================
-- 01_select_basics.sql: SELECT basics
-- Goal: List customers and products.
-- This file has errors. Fix them so every query runs.
-- ============================================================

-- Q1: Customer directory, showing name, email and city
SELECT first_name, last_name, email, city,
FROM customers;

-- Q2: Product catalogue with price
SELECT product_name, category, unit_price
FORM products;

-- Q3: Every distinct city we have customers in
SELECT DISTINCT city
FROM customers;
