-- Store Database Management System
-- Phase 2: Analytical Queries
-- Database: store_db

USE store_db;

-- Top Customers by Total Spend

SELECT
c.customer_id,
CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
ROUND(SUM(oi.quantity * oi.list_price * (1-oi.discount)),2) AS total_spent
FROM customers AS c 
JOIN orders as o 
ON c.customer_id = o.customer_id
JOIN order_items AS oi
ON o.order_id = oi.order_id
GROUP BY 
c.customer_id,
c.first_name,
c.last_name
ORDER BY 
total_spent DESC
LIMIT 10;

-- Customers with No Orders

SELECT
c.customer_id,
CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE o.order_id IS Null;

-- High-Value Customers (>=3 orders & >25000 spend)

SELECT
c.customer_id,
CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
COUNT(DISTINCT o.order_id) AS total_orders,
ROUND(SUM(oi.quantity * oi.list_price * (1-oi.discount)),2) AS total_spent
FROM customers AS c 
JOIN orders AS o 
ON c.customer_id = o.customer_id
JOIN order_items AS oi
ON o.order_id = oi.order_id
GROUP BY 
c.customer_id,
c.first_name,
c.last_name
HAVING total_orders >= 3 AND total_spent >25000
ORDER BY total_spent DESC;