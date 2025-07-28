# Write your MySQL query statement below
# 2025/07/28 - 176. Second Highest Salary
-- select *
select max(salary) SecondHighestSalary 
from Employee
where salary not in (
    select max(salary)
    from Employee
)