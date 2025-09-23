-- Identify First Sale Year: For each product, determine the earliest year it was sold using a window function.

-- Filter First Sale Records: Select only the records where the sale year matches the earliest year for that product.

-- Write your MySQL query statement below
WITH ranked_sales AS (
    SELECT product_id, year, quantity, price,
           RANK() OVER (PARTITION BY product_id ORDER BY year ASC) AS year_ranking
    FROM sales
)
SELECT product_id, year AS first_year, quantity, price
FROM ranked_sales
WHERE year_ranking = 1;
