-- Problem: Recyclable and Low Fat Products
-- LeetCode Link: https://leetcode.com/problems/recyclable-and-low-fat-products/
-- Approach: Filter Products table to only include rows where both `low_fats = 'Y'` AND `recyclable = 'Y'`.

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';
