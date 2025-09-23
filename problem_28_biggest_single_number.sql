-- Identify Single Numbers: Find numbers appearing exactly once using HAVING COUNT(*) = 1.

-- Select the Largest: Order the results descending and take the first one using LIMIT 1.

-- Handle Null: Return NULL if no number satisfies the condition.

-- Write your MySQL query statement below
SELECT IFNULL(
    (SELECT num
     FROM MyNumbers
     GROUP BY num
     HAVING COUNT(*) = 1
     ORDER BY num DESC
     LIMIT 1),
NULL) AS num;
