-- Check Null Values

SELECT *
FROM customers
WHERE customer_id IS NULL;

SELECT *
FROM products
WHERE product_id IS NULL;

-- Check Duplicate Customers

SELECT
customer_id,
COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Check Duplicate Orders

SELECT
order_id,
COUNT(*)
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Check Negative Sales

SELECT *
FROM order_items
WHERE sales < 0;

-- Check Invalid Quantity

SELECT *
FROM order_items
WHERE quantity <= 0;
