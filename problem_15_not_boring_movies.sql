-- Problem: Not Boring Movies
-- LeetCode Link: https://leetcode.com/problems/not-boring-movies/
-- Approach: Select movies with odd-numbered IDs and descriptions not containing 'boring',
-- then order the results by rating in descending order.

SELECT id, movie, description, rating
FROM Cinema
WHERE MOD(id, 2) = 1
  AND description NOT LIKE '%boring%'
ORDER BY rating DESC;
