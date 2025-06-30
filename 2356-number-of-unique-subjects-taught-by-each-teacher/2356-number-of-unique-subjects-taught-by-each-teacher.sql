# Write your MySQL query statement below
# 2025/06/30 - 2356. Number of Unique Subjects Taught by Each Teacher
select teacher_id, count(distinct subject_id) cnt
-- select *
from Teacher
group by teacher_id