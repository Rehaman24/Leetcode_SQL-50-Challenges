-- Problem: Confirmation Rate
-- LeetCode Link: https://leetcode.com/problems/confirmation-rate/
-- Approach: Calculate the confirmation rate for each user by dividing the number of 'confirmed' actions
-- by the total number of confirmation requests. Use LEFT JOIN to include users without any confirmation requests.

SELECT
  s.user_id,
  ROUND(
    COALESCE(
      SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) / COUNT(c.user_id),
      0
    ),
    2
  ) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id_
