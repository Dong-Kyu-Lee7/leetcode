# Write your MySQL query statement below
# 2025/07/03 - 1045. Customers Who Bought All Products
select customer_id
-- select *
from Customer
group by customer_id
having (select count(*) from Product) = count(distinct product_key)