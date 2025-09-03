-- Problem: Rising Temperature
-- LeetCode Link: https://leetcode.com/problems/rising-temperature/
-- Approach: Identify dates where the temperature is higher than the previous day.

SELECT w1.id
FROM Weather w1
JOIN Weather w2
  ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;
