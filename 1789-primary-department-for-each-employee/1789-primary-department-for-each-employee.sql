# Write your MySQL query statement below
# 20205/07/04 - 1789. Primary Department for Each Employee
select employee_id, department_id
-- select *
from Employee
where employee_id in(
    select employee_id # 1개 부서소속
    from Employee
    group by employee_id
    having count(employee_id) = 1

)
or primary_flag = 'Y' # n개 부서소속이면서 Y
-- group by employee_id
-- having count(employee_id) = 1 or employee_id in (
--     select employee_id
--     from Employee
--     group by employee_id
--     having count(primary_flag = 'Y') >= 1
-- )