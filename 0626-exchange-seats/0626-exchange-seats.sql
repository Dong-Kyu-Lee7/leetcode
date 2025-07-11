# Write your MySQL query statement below
# 2025/07/11 - 626. Exchange Seats
select
case
    when (id % 2) = 1  and id = (select count(*) from Seat) then id
    when (id % 2) = 1 then id + 1
    when (id % 2) = 0 then id - 1
    
End as id, student
from Seat
order by id