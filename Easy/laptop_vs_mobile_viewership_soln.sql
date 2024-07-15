-- Calculate the number of views from laptops and mobile devices (tablets and phones)

SELECT 
    -- Count the number of views from laptops
    SUM(CASE 
            WHEN device_type = 'laptop' THEN 1
            ELSE 0
        END) AS laptop_views,

    -- Count the number of views from mobile devices (tablets and phones)
    SUM(CASE 
            WHEN device_type IN ('tablet', 'phone') THEN 1
            ELSE 0
        END) AS mobile_views
FROM 
    viewership;


-- Query using Filter() (Another Method)

SELECT
    -- Count the number of views for 'laptop' devices
    COUNT(device_type) FILTER (WHERE device_type = 'laptop') AS laptop_views,

    -- Count the number of views for 'tablet' and 'phone' devices
    COUNT(device_type) FILTER (WHERE device_type IN ('tablet', 'phone')) AS mobile_views
FROM
    viewership;

