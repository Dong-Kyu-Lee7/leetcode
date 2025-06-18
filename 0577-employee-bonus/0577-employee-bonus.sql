# Write your MySQL query statement below
# 2025/06/18 - 577. Employee Bonus
select e.name, b.bonus
-- select *
from Employee e
left join Bonus b
on e.empId = b.empId
where b.bonus < 1000 or b.bonus is null
-- where not b.bonus > 1000 or b.bonus is null