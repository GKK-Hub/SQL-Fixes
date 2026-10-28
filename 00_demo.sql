-- ============================================================
-- 00_demo.sql: Demo file (maintainer's live demo)
-- Goal: Used by the teacher to demonstrate the workflow.
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
