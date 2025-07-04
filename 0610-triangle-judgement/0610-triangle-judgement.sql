# Write your MySQL query statement below
# 2025/07/04 - 610. Triangle Judgement
select *, if(x + y > z and x + z > y and y + z > x, 'Yes', 'No') triangle
from Triangle
