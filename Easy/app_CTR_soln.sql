-- Query to calculate click-through rate (CTR)

WITH event_type_count AS (
    -- Subquery to calculate impression and click counts for each app_id in 2022
    SELECT 
        app_id,
        SUM(
            CASE 
                WHEN event_type = 'impression' THEN 1 
                ELSE 0 
            END
        ) AS impression_count,
        SUM(
            CASE 
                WHEN event_type = 'click' THEN 1 
                ELSE 0 
            END
        ) AS click_count
    FROM 
        events
    WHERE 
        EXTRACT(YEAR FROM timestamp) = 2022  -- Filter events for the year 2022
    GROUP BY 
        app_id  -- Group results by app_id
)

-- Main query to calculate click-through rate (CTR) and round it to 2 decimal places
SELECT 
    app_id, 
    ROUND(100.0 * event_type_count.click_count / NULLIF(event_type_count.impression_count, 0), 2) AS ctr
FROM 
    event_type_count;
