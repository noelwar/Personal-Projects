SELECT DATE_PART('year', inspection_date), COUNT(violation_id)
FROM sf_restaurant_health_violations
WHERE business_name = 'Roxanne Cafe'
GROUP BY inspection_date
ORDER BY inspection_date ASC;
