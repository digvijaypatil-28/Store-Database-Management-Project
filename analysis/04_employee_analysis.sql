-- Store Database Management System
-- Phase 4: Employee Analysis Queries
-- Database: store_db

USE store_db;

--  Staff Performance by Revenue

SELECT 
st.staff_id,
CONCAT(st.first_name,' ',st.last_name ) AS staff_name,
s.store_name,
COUNT(DISTINCT o.order_id) AS total_orders,
ROUND(SUM(oi.quantity * oi.list_price * (1 - oi.discount)),2) AS total_revenue 
FROM stores AS s 
INNER JOIN orders as o
ON s.store_id = o.store_id
INNER JOIN order_items AS oi
ON o.order_id = oi.order_id
INNER JOIN staffs AS st 
ON o.staff_id = st.staff_id 
GROUP by 
st.first_name,
st.last_name,
st.staff_id ,
s.store_name
ORDER BY total_revenue DESC;

--  Staff Performance

SELECT 
st.staff_id,
CONCAT(st.first_name,' ',st.last_name ) AS staff_name,
s.store_name,
COUNT(DISTINCT o.order_id) AS total_orders,
ROUND(SUM(oi.quantity * oi.list_price * (1 - oi.discount)),2) AS total_revenue 
FROM stores AS s 
INNER JOIN orders as o
ON s.store_id = o.store_id
INNER JOIN order_items AS oi
ON o.order_id = oi.order_id
INNER JOIN staffs AS st 
ON o.staff_id = st.staff_id 
GROUP by 
st.first_name,
st.last_name,
st.staff_id ,
s.store_name
ORDER BY total_revenue DESC;

-- Top Staff by Orders Handled

SELECT
st.staff_id,
CONCAT(st.first_name,' ',st.last_name ) AS staff_name,
s.store_name,
COUNT(DISTINCT o.order_id) AS total_orders
FROM stores AS s 
INNER JOIN orders as o
ON s.store_id = o.store_id
INNER JOIN order_items AS oi
ON o.order_id = oi.order_id
INNER JOIN staffs AS st 
ON o.staff_id = st.staff_id 
GROUP by 
st.first_name,
st.last_name,
st.staff_id ,
s.store_name
ORDER BY total_orders DESC;

--  Rank Staff by Revenue

WITH staff_revenue AS (
SELECT 
st.staff_id,
CONCAT(st.first_name,' ',st.last_name ) AS staff_name,
s.store_name,
COUNT(DISTINCT o.order_id) AS total_orders,
ROUND(SUM(oi.quantity * oi.list_price * (1 - oi.discount)),2) AS total_revenue 
FROM stores AS s 
INNER JOIN orders as o
ON s.store_id = o.store_id
INNER JOIN order_items AS oi
ON o.order_id = oi.order_id
INNER JOIN staffs AS st 
ON o.staff_id = st.staff_id 
GROUP by 
st.first_name,
st.last_name,
st.staff_id ,
s.store_name)
SELECT 
staff_id,
staff_name,
store_name,
total_orders,
total_revenue,
DENSE_Rank() OVER(ORDER BY total_revenue DESC) AS rank_of_employee
FROM staff_revenue
ORDER BY rank_of_employee; 