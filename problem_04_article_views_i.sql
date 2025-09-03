-- Problem: Article Views I
-- LeetCode Link: https://leetcode.com/problems/article-views-i/
-- Approach: Identify authors who have viewed at least one of their own articles.

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;
