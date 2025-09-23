-- Calculate Query Quality: For each query_name, compute the average value of (rating / position).

-- Identify Poor Queries: A query is considered poor if rating < 3.

-- Calculate Poor Query Percentage: For each query_name, 
-- find the percentage of poor queries by dividing poor query count by total queries × 100.

-- Round Results: Use ROUND(..., 2) to format both quality and poor_query_percentage to two decimals.

-- Grouping: Results must be grouped by query_name to calculate metrics per query.

-- Write your MySQL query statement below
SELECT 
    query_name,
    ROUND(AVG(rating * 1.0 / position), 2) AS quality,
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;
