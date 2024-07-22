-- query to identify the manufacturers associated with the drugs that resulted in losses

SELECT 
    manufacturer, 
    COUNT(drug) AS drug_count,
    ABS(SUM(total_sales - cogs)) AS total_loss  -- Calculating the absolute value of total loss
FROM 
    pharmacy_sales
WHERE 
    cogs > total_sales  -- Filtering rows where there is a loss (cogs > total_sales)
GROUP BY 
    manufacturer
ORDER BY 
    total_loss DESC;
