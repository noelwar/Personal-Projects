SELECT DISTINCT business_name, 
    CASE
        WHEN LOWER(business_name) LIKE ANY(ARRAY['%cafe%', '%café%', '%coffee%']) THEN 'cafe'
        WHEN LOWER(business_name) LIKE ANY(ARRAY['%school%']) THEN 'school'
        WHEN LOWER(business_name) LIKE ANY(ARRAY['%restaurant%']) THEN 'restaurant'
        ELSE 'other'
    END AS business_type
FROM sf_restaurant_health_violations;
