# Write your MySQL query statement below
# 2025/06/25 - 550. Game Play Analysis IV
-- select avg(player_id) fraction
select round(count(distinct player_id) / (select count(distinct player_id) from Activity), 2) fraction
from Activity

where (player_id, subdate(event_date, interval 1 day)) in
    (
        select player_id, min(event_date)
        from Activity
        group by player_id
    )
-- group by player_id
-- datediff(event_date, event_date) = 1 # datediff는 유용하지 않은 함수라는 오류 발생