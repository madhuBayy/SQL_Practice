WITH quota_summary AS (
    -- CTE to calculate deal_size and compare with quota
    SELECT 
        d.employee_id AS employee_id, 
        SUM(d.deal_size) AS deal_size, 
        s.quota AS quota
    FROM 
        deals d
    INNER JOIN 
        sales_quotas s ON d.employee_id = s.employee_id
    GROUP BY 
        d.employee_id, s.quota
)
-- Main query to determine if deal_size meets quota
SELECT 
    employee_id,
    CASE WHEN deal_size >= quota THEN 'yes' ELSE 'no' END AS meets_quota
FROM 
    quota_summary
ORDER BY 
    employee_id;
