# Write your MySQL query statement below
# 2025/06/19 - 570. Managers with at Least 5 Direct Reports
select distinct m.name
-- select *
from Employee e
left join Employee m
on e.managerId = m.id
where m.id is not null
