# Write your MySQL query statement below
select w2.id
from Weather w1
left join Weather w2
on w2.recordDate = Date_ADD(w1.recordDate, INTERVAL 1 day)
where w2.temperature > w1.temperature ;

-- select w2.id
-- from Weather w1, Weather w2
-- where w2.recordDate = Date_ADD(w1.recordDate, INTERVAL 1 day) and w2.temperature > w1.temperature ;