WITH employee_queries AS (
    -- CTE to count unique queries per employee within a specific timeframe
    SELECT 
        e.employee_id,
        COALESCE(COUNT(DISTINCT q.query_id), 0) AS unique_queries
    FROM 
        employees AS e
    LEFT JOIN 
        queries AS q ON e.employee_id = q.employee_id
                    AND q.query_starttime >= '2023-07-01T00:00:00Z'
                    AND q.query_starttime < '2023-10-01T00:00:00Z'
    GROUP BY 
        e.employee_id
)
-- Main query to aggregate and count employees based on their unique query counts
SELECT
    unique_queries,
    COUNT(employee_id) AS employee_count
FROM 
    employee_queries
GROUP BY 
    unique_queries
ORDER BY 
    unique_queries;
