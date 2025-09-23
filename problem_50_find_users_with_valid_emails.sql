-- Validate Emails: Must start with a letter, contain letters, digits, underscore/dash/dot, and end with @leetcode.com
-- Use REGEXP and RIGHT() for strict validation.

SELECT *
FROM Users
WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$'
  AND RIGHT(mail, 13) = BINARY '@leetcode.com';
