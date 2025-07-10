# Write your MySQL query statement below
# 2025/07/10 - 1978. Employees Whose Manager Left the Company
select e1.employee_id
-- select *
from Employees e1 # 사원
left join Employees e2 # 매니저
on e1.manager_id = e2.employee_id
where e1.manager_id is not null and e1.salary < 30000 and e2.manager_id is null
order by e1.employee_id 