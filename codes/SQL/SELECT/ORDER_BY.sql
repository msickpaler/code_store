-- 昇順
SELECT
  *
FROM
  friends
ORDER BY
  old;

-- 降順
SELECT
  *
FROM
  friends
ORDER BY
  old DESC;

-- 複数カラムによる並べ替え。先に書いたものから並べ替える
SELECT
  *
FROM
  friends
ORDER BY
  old DESC,
  address,
  name DESC;