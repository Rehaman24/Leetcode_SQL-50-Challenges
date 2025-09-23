-- Combine Requests: Gather requester and accepter IDs.
-- Count Friends: Count number of friends per ID.
-- Select Most Friends: Return the ID with the highest count.

WITH ID AS (
    SELECT requester_id AS id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id FROM RequestAccepted
)
SELECT id, COUNT(*) AS num
FROM ID
GROUP BY id
ORDER BY num DESC
LIMIT 1;
