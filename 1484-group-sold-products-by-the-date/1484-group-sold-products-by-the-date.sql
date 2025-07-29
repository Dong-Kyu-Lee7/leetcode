# Write your MySQL query statement below
# 2025/07/29 - 1484. Group Sold Products By The Date
select sell_date, count(distinct product) num_sold, group_concat(distinct product) products
from Activities
-- where product in (
--     select distinct product
--     from Activities

-- )
group by sell_date
order by sell_date