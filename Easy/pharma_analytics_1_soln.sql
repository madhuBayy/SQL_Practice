-- query to find the top 3 most profitable drugs sold

SELECT 
    drug, 
    (total_sales - cogs) AS profit
FROM 
    pharmacy_sales
GROUP BY 
    drug, total_sales, cogs  -- Grouping by all selected columns to avoid aggregation errors
ORDER BY 
    profit DESC
LIMIT 3;
