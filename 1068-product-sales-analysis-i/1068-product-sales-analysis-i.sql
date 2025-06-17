# Write your MySQL query statement below
# 2025/06/17 - 1068. Product Sales Analysis I
select p.product_name, s.year, s.price
from sales s
left join product p
on p.product_id = s.product_id
where s.year is not null and s.price is not null