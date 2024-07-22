-- This query retrieves the parts where the 'finish_date' is NULL, indicating that the assembly step has not been completed.

SELECT 
    part,
    assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;
