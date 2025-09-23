-- Identify Primary Department: Select employees marked with 'Y' in the primary_flag column.

-- Handle Single Department Employees: For employees associated with only one department, include their department.

-- Write your MySQL query statement below
SELECT employee_id, department_id
FROM Employee a
WHERE a.primary_flag = 'Y'
   OR (
       SELECT COUNT(*)
       FROM Employee b
       WHERE a.employee_id = b.employee_id
       GROUP BY b.employee_id
   ) = 1;
