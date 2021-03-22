SELECT
  SCHEMA_NAME,
  DEFAULT_CHARACTER_SET_NAME,
  DEFAULT_COLLATION_NAME
FROM
  INFORMATION_SCHEMA.SCHEMATA
WHERE
  SCHEMA_NAME = 'test2';

-- addressテーブルのカラムはid, name, addressとする
-- addressテーブルからすべてのデータを取得
SELECT
  *
FROM
  address;

-- 指定カラムを取得
SELECT
  -- ()でまとめちゃダメみたい
  name,
  address
FROM
  address;

-- 順序不問、重複カラムもすべて出力される
SELECT
  id,
  name,
  address,
  id
FROM
  address;

-- /Gをつけることでrowごとに出力される。使いやすそう
-- ********** 1. row **********
--      id: 1
--    name: Andou
-- address: Tokyo
-- ********** 2. row **********
--      ...
--      ...
SELECT
  *
FROM
  address \ G;

-- 計算できる
select
  (name + address + id)
from
  address;

-- 出力時のカラム名を編集できる
select
  name as namae,
  address as juusho,
  (name + address + id) as goukei
from
  address;