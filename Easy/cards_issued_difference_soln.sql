WITH card_issuance_summary AS
(
    -- Subquery to calculate lowest and highest issuance amounts per card_name
    SELECT 
        card_name, 
        MIN(issued_amount) AS lowest_issuance, 
        MAX(issued_amount) AS highest_issuance
    FROM 
        monthly_cards_issued
    GROUP BY 
        card_name
)

-- Main query to select card_name and the difference between highest and lowest issuance amounts
SELECT 
    cis.card_name, 
    (cis.highest_issuance - cis.lowest_issuance) AS difference
FROM 
    card_issuance_summary cis
ORDER BY 
    difference DESC;
