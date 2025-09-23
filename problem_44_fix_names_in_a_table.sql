-- Capitalize Names: Convert the first letter to uppercase and remaining letters to lowercase.
-- Order by user_id to maintain original sequence.

SELECT user_id, 
       CONCAT(UPPER(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name, 2))) AS name
FROM Users
ORDER BY user_id;
