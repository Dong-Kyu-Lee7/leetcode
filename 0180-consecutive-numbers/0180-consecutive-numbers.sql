# Write your MySQL query statement below
# 2025/07/07 - 180. Consecutive Numbers
-- select distinct num ConsecutiveNums
-- select *
-- from Logs L1
-- left join (
--     select 
--     lead(num,1) over(order by id) second_num,
--     lead(num,2) over(order by id) third_num
--     from Logs
-- ) L2
-- on L1.num = L2.second_num and L1.num = L2.third_num

select distinct num ConsecutiveNums
from Logs
where (id + 1, num) in (select * from Logs)
    AND (id + 2, num) in (select * from Logs)
