SELECT c.name, o.order_date
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id;

SELECT oi.order_id, p.name AS product_name, oi.quantity
FROM orders_items oi
JOIN Products p ON oi.product_id = p.product_id;

SELECT o.order_id, c.name, o.total_amount, SUM(oi.quantity) AS total_items
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN orders_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id, c.name, o.total_amount;

SELECT 
    c.name AS customer_name,
    p.name AS product_name,
    oi.quantity,
    c.country,
    (p.price * oi.quantity) AS amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN orders_items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id;
