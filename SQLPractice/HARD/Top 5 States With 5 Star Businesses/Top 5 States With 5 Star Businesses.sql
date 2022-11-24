WITH get_rank AS(
    SELECT 
        state,
        COUNT(state) AS n_businesses,
        DENSE_RANK() OVER(ORDER BY COUNT(state) DESC) AS ranking
    FROM yelp_business
    WHERE stars = 5
    GROUP BY state
)

SELECT
    state,
    n_businesses
FROM get_rank
WHERE ranking < 5
ORDER BY n_businesses DESC, state ASC;
