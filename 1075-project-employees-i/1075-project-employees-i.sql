# Write your MySQL query statement below
# 2025/06/23 - 1075. Project Employees I
select p.project_id, round(avg(e.experience_years),2) average_years
-- select *
from project p
left join Employee e
on p.employee_id = e.employee_id
group by p.project_id