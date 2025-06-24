# Write your MySQL query statement below
# 2025/06/24 - 1211. Queries Quality and Percentage
select query_name,
    round(sum((rating / position)) / count(*), 2) quality,
    round((sum(if(rating < 3, 1, 0)) / count(*)) * 100,2) poor_query_percentage
    
from Queries
join (
    select count(*)
    from Queries
    group by query_name
) cnt
group by query_name
order by quality desc

-- select *
-- from 
--     (
--     select q.query_name, round(sum((q.rating / position)) / count(*), 2) quality
--     from Queries q
--     group by query_name
-- ) rt

-- join (
--     select *
--     from Queries u
--     where rating < 3
--     -- group by query_name
-- ) cnt
