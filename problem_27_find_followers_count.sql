-- Count Followers: Count the number of followers per user using COUNT(follower_id).

-- Group by User: Group results by user_id.

-- Sort Users: Order results by user_id ascending.

-- Write your MySQL query statement below
SELECT user_id, COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC;
