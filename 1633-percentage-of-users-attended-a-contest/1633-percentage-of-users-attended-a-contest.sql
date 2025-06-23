# Write your MySQL query statement below
# 2025/06/23  - 1633. Percentage of Users Attended a Contest
select distinct r.contest_id, round((count(r.user_id) / (select count(*) from Users)), 4)*100 percentage
-- select *
from Users u
join Register r
on u.user_id = r.user_id
group by r.contest_id
order by percentage desc, r.contest_id asc
-- order by r.contest_id asc
