# Write your MySQL query statement below
# 2025/07/24 - 1527. Patients With a Condition
select *
from Patients
where conditions like '% DIAB1%' or conditions like 'DIAB1%'
-- where instr(conditions, 'DIAB1')