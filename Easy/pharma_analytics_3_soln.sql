-- query to calculate the total drug sales for each manufacturer.

WITH drug_sales AS (
    -- Calculate total sales per manufacturer
    SELECT 
        manufacturer, 
        SUM(total_sales) AS total_sales
    FROM 
        pharmacy_sales
    GROUP BY 
        manufacturer
)

-- Select manufacturer and format total sales in millions
SELECT 
    manufacturer, 
    ('$' || ROUND(total_sales / 1000000) || ' million') AS total_drug_sales
FROM 
    drug_sales
ORDER BY 
    total_sales DESC,  -- Order by total sales descending
    manufacturer;      -- Then by manufacturer for tie-breaking
