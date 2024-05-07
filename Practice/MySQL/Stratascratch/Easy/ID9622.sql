-- Number of Bathrooms and bedrooms

-- https://platform.stratascratch.com/coding/9622-number-of-bathrooms-and-bedrooms?code_type=3

-- Solution:

SELECT city, property_type, AVG(bathrooms) as n_bathrooms_avg , AVG(bedrooms) AS n_bedrooms_avg FROM airbnb_search_details
GROUP BY 1, 2