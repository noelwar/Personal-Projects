SELECT 
    city, 
    property_type,
    avg(bathrooms) AS n_bathrooms_avg,
    avg(bedrooms) AS n_bedrooms_avg
FROM airbnb_search_details
GROUP BY 
    city,
    property_type;
