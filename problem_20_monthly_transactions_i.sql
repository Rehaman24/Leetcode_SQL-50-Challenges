-- Extract Month: Use LEFT(trans_date, 7) to get the year-month format.

-- Grouping: Group transactions by month and country to compute aggregated metrics.

-- Count Transactions: COUNT(id) gives the total number of transactions.

-- Count Approved Transactions: SUM(state = 'approved') counts how many transactions are approved.

-- Calculate Totals: 
--   SUM(amount) gives the total transaction amount.
--   SUM((state = 'approved') * amount) gives the total approved transaction amount.

-- Final Result: Display metrics for each month-country combination.

-- Write your MySQL query statement below
SELECT
    LEFT(trans_date, 7) AS month,
    country,  
    COUNT(id) AS trans_count,
    SUM(state = 'approved') AS approved_count,
    SUM(amount) AS trans_total_amount, 
    SUM((state = 'approved') * amount) AS approved_total_amount
FROM Transactions  
GROUP BY month, country;
