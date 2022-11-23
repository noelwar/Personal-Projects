SELECT 
    first_name,
    order_date,
    SUM(total_order_cost)
FROM customers
JOIN orders ON customers.id = orders.cust_id
WHERE order_date > '2019-02-01' AND order_date < '2019-05-01'
GROUP BY first_name, order_date
ORDER BY sum DESC
LIMIT 1
