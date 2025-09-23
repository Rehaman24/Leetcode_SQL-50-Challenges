-- Identify Consecutive Numbers: Find numbers that appear three times in consecutive Id order.

-- Join Logs Table: Join the table to itself to check consecutive Ids.

-- Filter Matching Values: Ensure the Num values match across the three consecutive rows.

-- Write your MySQL query statement below
SELECT DISTINCT A.Num AS ConsecutiveNums
FROM Logs A
JOIN Logs B ON A.Id + 1 = B.Id
JOIN Logs C ON B.Id + 1 = C.Id
WHERE A.Num = B.Num
  AND B.Num = C.Num;
