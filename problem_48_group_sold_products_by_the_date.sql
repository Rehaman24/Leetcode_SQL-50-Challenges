-- Aggregate Products Sold: Count distinct products sold per date.
-- Concatenate product names into a comma-separated string for each date.

SELECT sell_date, 
       COUNT(DISTINCT product) AS num_sold,
       GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') AS products
FROM activities
GROUP BY sell_date;
