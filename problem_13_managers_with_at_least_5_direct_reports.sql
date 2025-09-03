-- Problem: Managers with at Least 5 Direct Reports
-- LeetCode Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Approach: Perform a self-join on the Employee table to match employees with their managers.
-- Group by the manager's ID and filter to include only those with 5 or more direct reports.

SELECT m.name
FROM Employee e
JOIN Employee m ON e.managerId = m.id
GROUP BY m.name
HAVING COUNT(e.id) >= 5;
