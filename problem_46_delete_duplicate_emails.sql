-- Remove Duplicate Emails: Keep the row with the smallest ID for each email.
-- Join the table with itself to identify duplicates.

DELETE p1
FROM Person p1
JOIN Person p2
  ON p1.email = p2.email 
 AND p1.id > p2.id;
