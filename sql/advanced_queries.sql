-- Sales by Product

SELECT
product_id,
SUM(sales) AS total_sales
FROM order_items
GROUP BY product_id
ORDER BY total_sales DESC;

-- Order Count

SELECT COUNT(*) AS total_orders
FROM orders;

-- Average Sales

SELECT AVG(sales) AS avg_sales
FROM order_items;
