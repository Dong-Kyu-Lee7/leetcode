# Write your MySQL query statement below
# 2025/06/19 - Confirmation Rate
select s.user_id, round(avg(if (c.action = 'confirmed',1,0)), 2) confirmation_rate
-- select *
from Signups s
left join Confirmations c
on s.user_id = c.user_id
group by s.user_id

-- order by s.time_stamp
-- ifnull(c.action,0)