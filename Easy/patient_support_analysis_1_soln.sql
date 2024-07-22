WITH caller_summary AS (
    -- Subquery to count calls per policy_holder_id
    SELECT 
        policy_holder_id, 
        COUNT(case_id) AS call_count
    FROM 
        callers
    GROUP BY 
        policy_holder_id
)
-- Main query to count policy_holder_ids with call_count >= 3
SELECT 
    COUNT(policy_holder_id)
FROM 
    caller_summary
WHERE 
    call_count >= 3;
