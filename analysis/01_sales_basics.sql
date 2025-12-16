-- Store Database Management System
-- Phase 1: Sales Basic Queries
-- Database: store_db

USE store_db;

-- Overall sales sanity metrics

SELECT 
(SELECT COUNT(*) FROM orders) AS total_orders,
(SELECT COUNT(*) FROM order_items) AS total_order_items,
(SELECT SUM(quantity)  FROM order_items )AS total_quantity,
(SELECT SUM(quantity * list_price *(1-discount))  FROM order_items ) AS total_revenue;

-- Top 10 Best-Selling Products (By Quantity Sold)

SELECT 
p.product_id,
p.product_name,
ROUND(SUM(o.quantity),2) AS total_sold,
ROUND(SUM(o.quantity * o.list_price * (1-o.discount)),2) AS revenue_generated
FROM order_items AS o 
INNER JOIN products AS p 
ON o.product_id = p.product_id
GROUP BY p.product_id , p.product_name 
ORDER BY total_sold DESC
LIMIT 10;

--  Top 10 Products by Revenue

SELECT 
p.product_id,
p.product_name,
ROUND(SUM(o.quantity)) AS total_sold,
ROUND(SUM(o.quantity * o.list_price * (1-o.discount)),2) AS revenue_generated
FROM order_items AS o 
INNER JOIN products AS p 
ON o.product_id = p.product_id
GROUP BY p.product_id , p.product_name 
ORDER BY revenue_generated  DESC
LIMIT 10;

--  Revenue by Store

SELECT 
S.store_id,
S.store_name,
ROUND(SUM(OI.quantity * OI.list_price * (1 - OI.discount)),2) AS total_revenue ,
COUNT(DISTINCT O.order_id) AS total_orders
FROM stores AS S 
INNER JOIN orders  AS O 
ON S.store_id = O.store_id
INNER JOIN order_items AS OI
ON O.order_id = OI.order_id
GROUP BY 
S.store_id,
S.store_name
ORDER BY  total_revenue DESC;





