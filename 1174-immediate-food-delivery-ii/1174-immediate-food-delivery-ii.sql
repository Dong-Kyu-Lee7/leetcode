# Write your MySQL query statement below
# 2025/06/25 - 1174. Immediate Food Delivery II
select
    round(avg(order_date  = customer_pref_delivery_date),2) * 100 immediate_percentage
-- round(sum(if(order_date  = customer_pref_delivery_date,1,0)) / select count(distinct customer_id) from Delivery, 2) * 100 immediate_percentage
-- select *
from Delivery
where (customer_id, order_date) in
    (
    select customer_id, min(order_date )
    from Delivery
    group by customer_id
    )
-- group by customer_id