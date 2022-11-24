SELECT 
    DISTINCT(a.user_id) 
FROM amazon_transactions AS a
JOIN amazon_transactions AS b
    ON a.user_id = b.user_id
WHERE a.created_at - b.created_at BETWEEN 0 AND 7
    AND a.id != b.id
