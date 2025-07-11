# Write your MySQL query statement below
# 2025/07/09 - 1907. Count Salary Categories
-- select category, count(account_id) accounts_count
-- -- select *
-- from (
--     select account_id,
--     case when income < 20000 then 'Low Salary'
--         when income between 20000 and 50000 then 'Average Salary'
--         else 'High Salary'
--     end as category
--     from Accounts
-- ) acc1
-- group by category
SELECT
  category,
  COUNT(account_id) AS accounts_count
FROM (
  -- 실제 데이터에서 카테고리 지정
  SELECT
    account_id,
    CASE
      WHEN income < 20000                 THEN 'Low Salary'
      WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
      ELSE 'High Salary'
    END AS category
  FROM Accounts

  -- 없는 카테고리에도 0을 표시하기 위한 더미 행
  UNION ALL
  SELECT NULL, 'Low Salary'
  UNION ALL
  SELECT NULL, 'Average Salary'
  UNION ALL
  SELECT NULL, 'High Salary'
) AS acc1
GROUP BY
  category;
