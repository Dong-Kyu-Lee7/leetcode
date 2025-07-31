# Write your MySQL query statement below
# 2025/07/31 - 1517. Find Users With Valid E-Mails
-- select *
-- from Users
-- where mail regexp '^[A-Za-z][A-Za-z0-9\\._-]*@leetcode\\.com$', 'i'

SELECT *
FROM Users
WHERE REGEXP_LIKE(mail, '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode\\.com$', 'c')

-- where mail like '%@leetcode.com' and mail regexp '^[a-zA-Z][a-zA-Z0-9-_.]'
-- -> like 때문에 leetcode.com을 포함한 quarz#2020