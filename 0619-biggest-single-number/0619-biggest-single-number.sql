# Write your MySQL query statement below
# 20205/07/02 - 619. Biggest Single Number
-- select if(count(distinct num) = 1, max(num), null) num
select max(num) num
from MyNumbers
where (num) in(
    select  num
    from MyNumbers
    group by num
    having count(num) = 1
)
