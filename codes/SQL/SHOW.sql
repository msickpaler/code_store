-- 直近の警告を表示
SHOW WARNINGS;

-- test1データベースの全テーブルを表示
SHOW TABLES
FROM
  test1;

-- test1データベースからerで終わるテーブルを表示
SHOW TABLES
FROM
  test1 LIKE "%er";

-- テーブル情報の表示
show create table product \G;