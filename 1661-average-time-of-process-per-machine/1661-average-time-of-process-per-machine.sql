# Write your MySQL query statement below
# 2025/06/17 - 1661. Average Time of Process per Machine
select a2.machine_id, round(avg(a2.timestamp - a1.timestamp), 3) processing_time
-- select * 
from Activity a1
left join Activity a2
on a2.machine_id = a1.machine_id and a2.process_id = a1.process_id
where a1.activity_type = 'start' and a2.activity_type = 'end'
group by a2.machine_id;