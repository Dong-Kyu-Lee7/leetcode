# Write your MySQL query statement below
# 2025/07/15 - 1321. Restaurant Growth
-- select *
select
    visited_on,
    (
        select sum(amount)
        from Customer
        where visited_on between subdate(origin.visited_on, interval 6 day) and origin.visited_on #지난 7일과 visited_on 같은 날
    ) amount,
    (
        select round((sum(amount) / 7), 2)
        from Customer
        where visited_on between subdate(origin.visited_on, interval 6 day) and origin.visited_on
    ) average_amount

from Customer origin
where visited_on in (
    select adddate(visited_on, interval 6 day)
    from Customer
)
group by visited_on