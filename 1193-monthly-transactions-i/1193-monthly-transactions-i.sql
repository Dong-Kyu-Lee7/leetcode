# Write your MySQL query statement below
# 2025/06/24 - 1193. Monthly Transactions I
-- select
--     DATE_FORMAT(trans_date, '%Y-%m') month,
--     country,
--     count(DATE_FORMAT(trans_date, '%Y-%m')) trans_count, # 0과 1의 모든 개수이므로 오류
--     count(if(state = 'approved ', 1,0)) approved_count,
--     sum(amonut) trans_total_amount,
--     sum(if(state = 'approved ', mount,0)) approved_total_amount
-- select *
select
    DATE_FORMAT(trans_date, '%Y-%m') month,
    country,
    count(*) trans_count,
    sum(if(state = 'approved ', 1,0)) approved_count,
    sum(amount) trans_total_amount,
    sum(if(state = 'approved ', amount,0)) approved_total_amount
from Transactions
group by month, country