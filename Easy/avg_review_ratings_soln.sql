-- Query to calculate average star rating per product by month

SELECT 
    EXTRACT(MONTH FROM submit_date) AS month,
    product_id,
    ROUND(AVG(stars), 2) AS avg_star_rating
FROM 
    reviews
GROUP BY 
    EXTRACT(MONTH FROM submit_date),
    product_id
ORDER BY 
    month;
