-- Problem: Employee Bonus
-- LeetCode Link: https://leetcode.com/problems/employee-bonus/
-- Approach: Use a LEFT JOIN to include all employees, even those without a bonus. 
-- Filter for employees with a bonus less than 1000 or no bonus at all.

SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;
