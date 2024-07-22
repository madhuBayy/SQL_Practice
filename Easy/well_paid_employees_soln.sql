-- query to identify all employees who earn more than their direct managers

SELECT 
    emp.employee_id AS employee_id,
    emp.name AS employee_name
FROM 
    employee AS emp
INNER JOIN 
    employee AS mgr
      -- Join condition: employee's manager ID matches manager's employee ID
    ON emp.manager_id = mgr.employee_id
WHERE 
    emp.salary > mgr.salary;
