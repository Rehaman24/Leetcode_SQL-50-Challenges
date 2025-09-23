-- Filter Duplicate tiv_2015: Include only tiv_2015 values that appear more than once.
-- Ensure Unique Location: Consider only unique lat/lon combinations.
-- Sum Investments: Sum tiv_2016 for filtered records.

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
) 
AND (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
);
