-- Total Sales
SELECT SUM(sales) AS total_sales
FROM order_items;

-- Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Top Products
SELECT
    product_id,
    SUM(sales) AS revenue
FROM order_items
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 10;

-- Top Customers
SELECT
    c.customer_name,
    SUM(oi.sales) AS revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_name
ORDER BY revenue DESC;
