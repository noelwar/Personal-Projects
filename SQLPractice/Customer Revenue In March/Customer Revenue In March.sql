SELECT SUM(total_order_cost) AS revenue, cust_id
FROM orders
WHERE
    DATE_PART('year', order_date) = 2019 AND
    DATE_PART('month', order_date) = 03
GROUP BY cust_id
ORDER BY revenue DESC;
