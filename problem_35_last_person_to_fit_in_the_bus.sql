-- Calculate Cumulative Weight: Compute cumulative sum of weight ordered by turn using window function.

-- Identify Last Person: Select the last person whose cumulative weight does not exceed bus limit (1000).

-- Write your MySQL query statement below
WITH CumulativeWeight AS (
    SELECT
        person_name,
        SUM(weight) OVER (ORDER BY turn) AS total_weight
    FROM Queue
)
SELECT person_name
FROM CumulativeWeight
WHERE total_weight <= 1000
ORDER BY total_weight DESC
LIMIT 1;
