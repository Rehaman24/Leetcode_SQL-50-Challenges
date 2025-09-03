-- Problem: Average Time of Process per Machine
-- LeetCode Link: https://leetcode.com/problems/average-time-of-process-per-machine/
-- Approach: Calculate the average processing time for each machine by joining the Activity table on machine_id and process_id,
-- filtering for 'start' and 'end' activity types, and computing the difference between timestamps.

# Write your MySQL query statement below
with tmp_start as (
    select *
    from Activity
    where activity_type = 'start'
), tmp_end as (
    select *
    from Activity
    where activity_type = 'end'
)
select
    A.machine_id
    , round(avg(B.timestamp - A.timestamp), 3) as processing_time
from tmp_start A join tmp_end B
    on A.machine_id = B.machine_id
    and A.process_id = B.process_id
group by A.machine_id
;
