# Write your MySQL query statement below
# 2025/07/27 - 196. Delete Duplicate Emails
delete p1
-- select *
from Person p1
inner join Person p2
on p1.email = p2.email
where p1.id > p2.id