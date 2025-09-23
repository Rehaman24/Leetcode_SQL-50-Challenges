-- Calculate Daily Sales: Aggregate sales per day.
-- Compute 7-Day Moving Sum and Average: Use window functions for rolling calculation.
-- Skip First 6 Days: Only return results when 7 days are available.

WITH temp AS (
    SELECT visited_on, SUM(amount) AS daily_sum
    FROM Customer
    GROUP BY visited_on
),
final AS (
    SELECT visited_on,
           SUM(daily_sum) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount,
           ROUND(AVG(daily_sum) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), 2) AS average_amount,
           ROW_NUMBER() OVER (ORDER BY visited_on) AS sn
    FROM temp
)
SELECT visited_on, amount, average_amount
FROM final
WHERE sn > 6
ORDER BY visited_on;
