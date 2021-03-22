-- friendsテーブルはname、old、addressカラムをもつとする
-- operator list
-- old < 30;
-- old <= 30;
-- old = 30;
-- old <> 30; this means "not equal"
--

-- ORよりもANDの方が先に処理される。この場合、'東京の31以上'もしくは'大阪'という分け方になる
select
  *
from
  friends
where
  address = 'Tokyo'
  AND old >= 31
  OR address = 'Osaka';

-- oldが22, 26であるもの。NOT INでそれ以外のもの。
SELECT
  *
FROM
  friends
WHERE
  old IN (22, 26);

-- 間のもの。NOT BETWEENでそれ以外のもの。
SELECT
  *
FROM
  friends
WHERE
  old BETWEEN 20
  AND 26;