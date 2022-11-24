WITH host_table AS(
    SELECT DISTINCT
        price,
        (CASE
            WHEN number_of_reviews = 0 THEN 'New'
            WHEN number_of_reviews BETWEEN 1 AND  5 THEN 'Rising'
            WHEN number_of_reviews BETWEEN 6 AND 15 THEN 'Trending Up'
            WHEN number_of_reviews BETWEEN 16 AND 40 THEN 'Popular'
            ELSE 'Hot' END
        ) AS popularity_rating,
         CONCAT(price, room_type, host_since, zipcode, number_of_reviews) AS host_id 
    FROM airbnb_host_searches
)

SELECT
    popularity_rating,
    MIN(price),
    AVG(price),
    MAX(price)
FROM host_table
GROUP BY popularity_rating;
