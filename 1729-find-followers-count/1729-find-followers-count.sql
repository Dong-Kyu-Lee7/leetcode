# Write your MySQL query statement below
# 2025/07/02 - 1729. Find Followers Count
select f1.user_id, count(distinct f1.follower_id) followers_count
-- select *
from Followers f1 # 유저
left join Followers f2 # 팔로워
on f1.follower_id = f2.user_id
group by f1.user_id
order by f1.user_id