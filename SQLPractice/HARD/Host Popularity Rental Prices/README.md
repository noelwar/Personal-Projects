### Question: Host Popularity Rental Prices

Airbnb <br>
Hard <br>
Interview Questions <br>
ID 9632 <br>


You’re given a table of rental property searches by users.
The table consists of search results and outputs host information for searchers.
Find the minimum, average, maximum rental prices for each host’s popularity rating.
The host’s popularity rating is defined as below:

0 reviews: New <br>
1 to 5 reviews: Rising <br>
6 to 15 reviews: Trending Up <br>
16 to 40 reviews: Popular <br>
more than 40 reviews: Hot <br>

Tip: The id column in the table refers to the search ID. 
You'll need to create your own host_id by concating price, room_type, host_since, zipcode, and number_of_reviews.
Output host popularity rating and their minimum, average and maximum rental prices.

airbnb_host_searches
|variable|type|
|-|-|
|id|int|
|price|float|
|property_type|varchar|
|room_type|varchar|
|amenities|varchar|
|accommodates|int|
|bathrooms|int|
|bed_type|varchar|
|cancellation_policy|varchar|
|cleaning_fee|boolcity|varchar|
|host_identity_verified|varchar|
|host_response_rate|varchar|
|host_since|datetime|
|neighbourhood|varchar|
|number_of_reviews|int|
|review_scores_rating|float|
|zipcode|int|
|bedrooms|int|
|beds|int|
