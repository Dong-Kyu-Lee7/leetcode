# Write your MySQL query statement below
# 2025/07/14 - 1341. Movie Rating
(
-- select *
select u.name results
from MovieRating mr1
left join Users u
on u.user_id = mr1.user_id
group by mr1.user_id
-- having count(mr1.user_id)
order by count(mr1.user_id) desc, u.name
limit 1
)
union all # order by, limit 포함 시 select 전체 ()

(
select mo.title
from MovieRating mr2
left join Movies mo
on mo.movie_id = mr2.movie_id
where mr2.created_at between '2020-02-01' and '2020-02-28'
group by mr2.movie_id
-- having avg(mr2.rating)
order by avg(mr2.rating) desc, mo.title
limit 1
)