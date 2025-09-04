-- Problem: Project Employees I
-- LeetCode Link: https://leetcode.com/problems/project-employees-i/
-- Approach:
--   1. Join Project table with Employee table on employee_id.
--   2. Group by project_id to calculate the average experience for each project.
--   3. Round the average experience to 2 decimal places.

SELECT 
  p.project_id,
  ROUND(AVG(e.experience_years * 1.0), 2) AS average_years
FROM Project p
JOIN Employee e
  ON p.employee_id = e.employee_id
GROUP BY p.project_id;
