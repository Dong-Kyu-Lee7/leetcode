# Write your MySQL query statement below
# 2025/07/17 - 585. Investments in 2016
# 조건1 -> 동일한 tiv_2015 값
# 조건2 -> 동일한 tiv_2015 값 중 같은 위도 경도 x
select round(sum(tiv_2016),2) tiv_2016
-- select *
from Insurance i1
where tiv_2015 in ( # tiv_2015와 동일값 10이면 포함
    select tiv_2015
    from Insurance i2
    where i1.pid != i2.pid # tiv_2015값 20 제거
)
and (lat, lon) not in ( # lat, lon (20,20) 아닌 행 출력
    select lat, lon
    from Insurance i3
    where i1.pid != i3.pid # lat, lon (20,20)만 출력
)