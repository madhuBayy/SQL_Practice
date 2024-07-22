-- Common Table Expression (CTE) to find duplicate postings based on company_id, title, and description

WITH duplicate_postings AS (
    SELECT company_id, COUNT(job_id)
    FROM job_listings
    GROUP BY company_id, title, description
    HAVING COUNT(job_id) > 1  -- Filter to include only those with more than one job listing
)

-- Count the distinct number of companies with duplicate postings
SELECT COUNT(DISTINCT company_id) AS duplicate_companies
FROM duplicate_postings
