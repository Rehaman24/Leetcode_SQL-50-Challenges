--Count Total Users: First, determine the total number of users by counting all entries in the Users table.

--Count Registered Users per Contest: For each contest, count how many unique users have registered.

--Calculate Percentage: For each contest, compute the percentage of users who registered by dividing the number of registered users by the total number of users, then multiplying by 100.

--Round the Result: Use the ROUND() function to round the percentage to two decimal places.

-- Order the Results: Sort the results first by percentage in descending order, and then by contest_id in ascending order.

--Write your MySQL query statement below
SELECT 
    r.contest_id,
    ROUND(COUNT(r.user_id) / (SELECT COUNT(*) FROM users) * 100, 2) AS percentage
FROM register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;



   
