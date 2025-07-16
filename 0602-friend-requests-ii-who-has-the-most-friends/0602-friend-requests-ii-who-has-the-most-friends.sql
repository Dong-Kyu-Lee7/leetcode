# Write your MySQL query statement below
# 2025/07/16 - 602. Friend Requests II: Who Has the Most Friends
-- select *
select id, count(fri_id) num
from (
select requester_id id, accepter_id fri_id
from RequestAccepted 

union all # join은 행방향 추가이므로 불가능

select accepter_id id, requester_id fri_id
from RequestAccepted
) fri
group by id
order by num desc
limit 1