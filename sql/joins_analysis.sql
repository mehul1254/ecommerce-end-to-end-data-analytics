SELECT
c.customer_name,
p.product_name,
oi.quantity,
oi.sales
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN products p
ON oi.product_id = p.product_id;
