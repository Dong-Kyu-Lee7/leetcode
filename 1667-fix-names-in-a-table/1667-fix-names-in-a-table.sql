# Write your MySQL query statement below
# 2025/07/23 - 1667. Fix Names in a Table
-- select *
select u.user_id, concat(upper(left(u.name,1)), lower(substring(u.name,2))) name
from Users u
order by u.user_id