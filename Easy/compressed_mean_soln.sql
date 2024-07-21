WITH total_items_orders AS (
    -- Calculate total items and total orders
    SELECT 
        SUM(item_count * order_occurrences) AS total_items,
        SUM(order_occurrences) AS total_orders
    FROM 
        items_per_order
)

-- Select and round the average number of items per order
SELECT 
    ROUND(total_items::numeric / total_orders::numeric, 1) AS average_items_per_order
FROM 
    total_items_orders;
