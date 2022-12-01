WITH temp AS(
    SELECT
        to_char(created_at, 'YYYY-MM') AS year_month,
        SUM(value) AS monthly_value
    FROM sf_transactions
    GROUP BY year_month
)

SELECT
    year_month,
    ROUND((monthly_value - LAG(monthly_value) OVER(ORDER BY year_month)) / LAG(monthly_value) OVER(ORDER BY year_month) * 100, 2) AS revenue_diff_pct
FROM temp
ORDER BY year_month;
