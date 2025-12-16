-- Store Database Management System
-- Phase 3: Inventory Queries
-- Database: store_db

USE store_db;

--  Low Stock Products (< 50 units)

SELECT 
p.product_id,
p.product_name,
SUM(s.quantity) AS total_quantity
FROM stocks AS s
JOIN products AS p 
ON s.product_id = p.product_id
GROUP BY 
p.product_id,
p.product_name
HAVING total_quantity < 50
ORDER BY total_quantity;

--  Inventory Risk Analysis

SELECT
p.product_id,
p.product_name,
SUM(oi.quantity) AS total_quantity_sold,
s.quantity AS current_stock,
CASE 
WHEN s.quantity = 0 THEN 'HIGH'
WHEN s.quantity < SUM(oi.quantity) THEN 'MEDIUM'
ELSE 'LOW'
END AS risk_level
FROM products AS p 
INNER JOIN order_items AS oi
ON oi.product_id = p.product_id 
JOIN stocks AS s 
ON s.product_id = p.product_id
GROUP BY p.product_id,
p.product_name,
s.quantity
ORDER BY total_quantity_sold DESC,
risk_level DESC;