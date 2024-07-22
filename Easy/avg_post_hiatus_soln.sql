-- Query to classify user status based on post count

SELECT 
    user_id,
    DATE_PART('day', MAX(post_date) - MIN(post_date)) AS days_between  -- Calculate days between first and last post dates
FROM 
    posts
WHERE 
    EXTRACT(year FROM post_date) = 2021  -- Filter posts for the year 2021
GROUP BY 
    user_id
HAVING 
    COUNT(post_id) > 1;  -- Filter users with atleast 2 posts in 2021

