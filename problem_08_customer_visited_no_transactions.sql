-- Problem: Customer Who Visited but Did Not Make Any Transactions
-- LeetCode Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
-- Approach: Use a LEFT JOIN to identify visits without transactions and count them per customer.

SELECT V.customer_id, COUNT(V.visit_id) AS count_no_trans
FROM Visits V
LEFT JOIN Transactions T ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id;
