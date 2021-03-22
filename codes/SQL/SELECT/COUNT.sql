-- NULLもカウントする
SELECT
  COUNT(*) as cou
FROM
  friends;

-- addressがNULLのデータはカウントしない
SELECT
  COUNT(address) as cou
FROM
  friends;