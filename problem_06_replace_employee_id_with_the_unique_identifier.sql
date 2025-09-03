-- Problem: Replace Employee ID With The Unique Identifier
-- LeetCode Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
-- Approach: Use a LEFT JOIN to associate each employee with their unique_id, 
-- returning NULL if no match is found.

SELECT e.name, eu.unique_id
FROM Employees e
LEFT JOIN EmployeeUNI eu ON e.id = eu.id;
