-- Count Distinct Subjects: For each teacher, count the number of unique subjects they teach using COUNT(DISTINCT subject_id).

-- Group by Teacher: Group the results by teacher_id to compute the count per teacher.

-- Write your MySQL query statement below
SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;
