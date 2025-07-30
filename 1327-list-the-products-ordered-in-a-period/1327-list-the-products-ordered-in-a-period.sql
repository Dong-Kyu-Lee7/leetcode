# Write your MySQL query statement below
# 2025/07/30 - 1327. List the Products Ordered in a Period
-- select *
select p.product_name, sum(o.unit) unit
from Products p 
left join Orders o
on p.product_id = o.product_id
where o.order_date between '2020-02-01' and '2020-02-29'
group by p.product_name
having sum(o.unit) >= 100