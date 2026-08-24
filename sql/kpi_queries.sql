-- Total Revenue
SELECT SUM(sales) AS total_revenue
FROM order_items;

-- Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM order_items;

-- Average Order Value
SELECT
SUM(sales) / COUNT(DISTINCT order_id) AS avg_order_value
FROM order_items;

-- Top Product
SELECT
product_id,
SUM(sales) AS revenue
FROM order_items
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 1;
