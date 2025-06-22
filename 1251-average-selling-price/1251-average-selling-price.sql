# Write your MySQL query statement below
# 2025/06/22 - 1251. Average Selling Price
select distinct p.product_id, ifnull(round(sum(p.price * u.units) / sum(u.units),2), 0) average_price
-- select p.product_id, sum(u.units)
-- select *
from Prices p 
left join UnitsSold u
on p.product_id = u.product_id and (u.purchase_date >= p.start_date and u.purchase_date <= end_date)
group by p.product_id