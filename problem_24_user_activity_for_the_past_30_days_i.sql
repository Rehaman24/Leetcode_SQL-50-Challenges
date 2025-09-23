-- Define the 30-day period: The query calculates the daily active user count for a period of 30 days ending on '2019-07-27' inclusively.

-- Count distinct users: For each day within the 30-day period, count the number of distinct users who have activity records.

-- Group by activity date: Group the results by activity_date to get the count of active users per day.

-- Filter the date range: Use the WHERE clause to filter the activity_date between '2019-06-28' and '2019-07-28'.

-- Write your MySQL query statement below
SELECT  
    activity_date AS day,  
    COUNT(DISTINCT user_id) AS active_users  
FROM  
    Activity  
WHERE  
    activity_date BETWEEN '2019-06-28' AND '2019-07-28'  
GROUP BY  
    activity_date;
