# Write your MySQL query statement below
# 2025/07/03 - 1731. The Number of Employees Which Report to Each Employee
select e1.employee_id, e1.name, count(e2.reports_to) reports_count, round(avg(e2.age)) average_age
-- select *
from Employees e1 # 매니저
left join Employees e2 # 사원
on e1.employee_id = e2.reports_to
where e2.age is not null
group by e1.employee_id
order by e2.reports_to