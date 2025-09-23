-- Self-Join Employees Table: Join the Employees table to itself to associate each employee with their manager.

-- Aggregate Reports: For each manager, count the number of employees reporting to them and calculate the average age of these employees.

-- Filter Managers: Ensure that only employees who have at least one direct report are included in the results.

-- Write your MySQL query statement below
SELECT
    e.reports_to AS employee_id,
    c.name,
    COUNT(e.employee_id) AS reports_count,
    ROUND(AVG(e.age), 0) AS average_age
FROM
    Employees AS e
JOIN
    Employees AS c ON e.reports_to = c.employee_id
GROUP BY
    e.reports_to
ORDER BY
    e.reports_to;
