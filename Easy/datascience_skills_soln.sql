-- Query to find candidates who have skills in Python, SQL, and Tableau

SELECT candidate_id
FROM candidate_skills
-- Filtering skills of interest
WHERE skill IN ('Python', 'SQL', 'Tableau')
GROUP BY candidate_id
-- Ensuring candidates have all three skills
HAVING COUNT(DISTINCT skill) = 3;
