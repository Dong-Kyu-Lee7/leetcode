# Write your MySQL query statement below
# 2025/07/01 - 596. Classes With at Least 5 Students
select class
-- select *
from Courses
group by class
having count(class) >= 5