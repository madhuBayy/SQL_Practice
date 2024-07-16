-- Query to filter top 2 teams users by num of messages sent

SELECT 
    sender_id, 
    COUNT(message_id) AS message_count
FROM 
    messages
WHERE 
    EXTRACT(year FROM sent_date) = 2022  -- Filter messages sent in the year 2022
    AND EXTRACT(month FROM sent_date) = 8  -- Filter messages sent in August (month 8)
GROUP BY 
    sender_id
ORDER BY 
    message_count DESC
LIMIT 2;
