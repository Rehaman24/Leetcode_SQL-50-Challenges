-- Identify First Login Date: For each player, find the earliest login date using MIN(event_date).

-- Determine Day-2 Login: Check if the player logged in exactly one day after their first login using DATE_ADD(first_login, INTERVAL 1 DAY).

-- Calculate Fraction: Compute the fraction of players who logged in on the day after their first login 
-- by dividing the count of such players by the total number of distinct players.

-- Round the Result: Use ROUND(..., 2) to format the fraction to two decimal places.

-- Write your MySQL query statement below
WITH cte AS (
    SELECT player_id, MIN(event_date) AS first_login
    FROM activity
    GROUP BY player_id
)
SELECT ROUND(
    COUNT(DISTINCT a.player_id) * 1.0 / (SELECT COUNT(DISTINCT player_id) FROM activity), 2
) AS fraction
FROM activity a
INNER JOIN cte c
    ON c.player_id = a.player_id
    AND a.event_date = DATE_ADD(c.first_login, INTERVAL 1 DAY);
