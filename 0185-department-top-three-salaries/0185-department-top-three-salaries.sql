# Write your MySQL query statement below
# 2025/07/23 - 185. Department Top Three Salaries
-- select *
select d1.name Department, e.name Employee, e.salary Salary
from (
    select
        e1.name,
        e1.salary,
        e1.departmentId,
        dense_rank() over (partition by departmentId order by e1.salary desc) sal_rank
    from Employee e1
) e
left join Department d1
on e.departmentId = d1.id    
where sal_rank <= 3