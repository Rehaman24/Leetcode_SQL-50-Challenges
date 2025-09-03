-- Problem: Product Sales Analysis I
-- LeetCode Link: https://leetcode.com/problems/product-sales-analysis-i/
-- Approach: Join the Sales table with the Products table on product_id to retrieve product_name.
-- Extract the year from the sale_date using the YEAR() function.

SELECT p.product_name, YEAR(s.sale_date) AS year, s.price
FROM Sales s
JOIN Products p ON s.product_id = p.product_id;
