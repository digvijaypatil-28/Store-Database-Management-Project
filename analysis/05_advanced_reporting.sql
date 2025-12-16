-- Store Database Management System
-- Phase 5: Advanced Queries
-- Database: store_db

USE store_db;

--  Monthly Sales Trend

SELECT 
YEAR(o.order_date) AS year,
MONTH(o.order_date) AS Month,
ROUND(SUM(oi.quantity * oi.list_price * (1 - oi.discount)), 2) AS monthly_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY
    YEAR(o.order_date),
    MONTH(o.order_date)
ORDER BY
    year, month;

--  Month-over-Month Sales Comparison

SELECT
year,
month,
monthly_revenue,
LAG(monthly_revenue) OVER(ORDER BY year,month) AS previous_month_revenue,
monthly_revenue - LAG(monthly_revenue) OVER(ORDER BY year,month) AS revenue_change
FROM(
    SELECT 
YEAR(o.order_date) AS year,
MONTH(o.order_date) AS Month,
ROUND(SUM(oi.quantity * oi.list_price * (1 - oi.discount)), 2) AS monthly_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY
    YEAR(o.order_date),
    MONTH(o.order_date)
) AS t;

--  Running Total of Sales

SELECT 
o.order_date,
ROUND(
    SUM(oi.quantity * oi.list_price * (1 - oi.discount))
    OVER (ORDER BY o.order_date),
    2
) AS running_total_sales
FROM ORDERS AS o 
JOIN order_items AS oi
ON o.order_id = oi.order_id;

--  Row Number per Customer Orders

SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_id,
    o.order_date,
    ROW_NUMBER() OVER (
        PARTITION BY c.customer_id
        ORDER BY o.order_date
    ) AS order_sequence
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id;
