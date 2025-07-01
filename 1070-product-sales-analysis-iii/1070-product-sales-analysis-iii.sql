# Write your MySQL query statement below
# 2025/07/01 - 1070. Product Sales Analysis III
select s1.product_id, s1.year first_year, s1.quantity, s1.price
-- select *
from Sales s1
inner join (
    select product_id, min(year) first_year
    from Sales
    group by product_id
) s2
on s1.product_id = s2.product_id and s1.year = s2.first_year
-- group by s1.product_id
-- having min(s2.year)