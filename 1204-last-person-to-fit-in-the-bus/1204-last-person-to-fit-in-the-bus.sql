# Write your MySQL query statement below
# 2025/07/09 - 1204. Last Person to Fit in the Bus
-- select max(distinct person_name) person_name
select distinct person_name
from (
    select turn, person_name, weight, sum(weight) over(order by turn) Total_Weight
    from Queue
) q1
where Total_Weight <= 1000
order by Total_Weight desc
limit 1