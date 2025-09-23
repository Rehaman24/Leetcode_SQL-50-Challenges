-- Categorize Salaries: Divide accounts into Low (<20000), Average (20000–50000), High (>50000).

-- Count Accounts in Each Category: Use SUM with CASE WHEN to count the number of accounts per category.

-- Combine Results: Use UNION ALL to combine the three categories into a single result set.

-- Write your MySQL query statement below
SELECT 'Low Salary' AS category,
       SUM(CASE WHEN income < 20000 THEN 1 ELSE 0 END) AS accounts_count
FROM Accounts
UNION ALL
SELECT 'Average Salary' AS category,
       SUM(CASE WHEN income >= 20000 AND income <= 50000 THEN 1 ELSE 0 END) AS accounts_count
FROM Accounts
UNION ALL
SELECT 'High Salary' AS category,
       SUM(CASE WHEN income > 50000 THEN 1 ELSE 0 END) AS accounts_count
FROM Accounts;
