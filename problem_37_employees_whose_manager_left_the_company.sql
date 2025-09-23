-- Identify Employees with Missing Managers: Select employees whose manager_id does not exist in the Employees table.

-- Filter by Salary: Only include employees earning less than 30000.

-- Order Results: Sort by employee_id.

SELECT e.employee_id
FROM Employees e
WHERE e.salary < 30000 
  AND e.manager_id NOT IN (SELECT employee_id FROM Employees)
ORDER BY e.employee_id;
