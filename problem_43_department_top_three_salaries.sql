-- Join Employees with Departments: Get department names for employees.
-- Rank Salaries in Each Department: Use DENSE_RANK to rank salaries descending.
-- Select Top 3 per Department: Filter rows where rank <= 3.

SELECT Department, Employee, salary
FROM (
    SELECT d.name AS Department,
           e.name AS Employee,
           salary,
           DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY salary DESC) AS rank_in_dept
    FROM Employee e
    INNER JOIN Department d ON e.departmentId = d.id
) Emp
WHERE rank_in_dept <= 3;
