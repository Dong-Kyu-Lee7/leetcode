# Write your MySQL query statement below
# 2025/06/30 - 1141. User Activity for the Past 30 Days I
select activity_date day, count( distinct user_id) active_users
-- select *
from Activity
where datediff('2019-07-27', activity_date) >= 0 and datediff('2019-07-27', activity_date) < 30
-- where activity_date < '2019-07-27' and datediff('2019-07-27', activity_Date) < 30
group by activity_date