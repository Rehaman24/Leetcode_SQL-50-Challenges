-- Problem: Big Countries
-- LeetCode Link: https://leetcode.com/problems/big-countries/
-- Approach: Select countries with population >= 250,000,000 or area >= 3,000,000 km².

SELECT name, population, area
FROM World
WHERE population >= 250000000 OR area >= 3000000;
