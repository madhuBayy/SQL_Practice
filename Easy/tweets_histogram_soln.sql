SELECT tweet_bucket, COUNT(user_id) AS users_num
FROM (
    SELECT user_id, COUNT(tweet_id) AS tweet_bucket  
    FROM tweets
    -- Filtering tweets from the year 2022
    WHERE EXTRACT(YEAR FROM tweet_date) = 2022
    -- Grouping by user_id to count tweets per user
    GROUP BY user_id
) AS count_tweets
-- Grouping by tweet_bucket to count number of users per bucket 
GROUP BY tweet_bucket;
