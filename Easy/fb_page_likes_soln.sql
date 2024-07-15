/* This query retrieves the IDs of pages from the 'pages' table that have zero likes or 
do not have any corresponding likes in the 'page_likes' table. */

SELECT 
    pages.page_id
FROM pages
LEFT JOIN page_likes
    ON pages.page_id = page_likes.page_id
-- Filter to return only those pages where there are no corresponding likes
WHERE page_likes.page_id IS NULL;  
