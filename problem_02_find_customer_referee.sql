-- Problem: Find Customer Referee
-- LeetCode Link: https://leetcode.com/problems/find-customer-referee/
-- Approach: Retrieve customer names where referee_id is not 2 or is NULL.

SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;
