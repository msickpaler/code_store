INSERT INTO
  user
VALUES
  (1, 'Yamada', 'Tokyo');

-- 指定していないaddressにはデフォルト値が入る
INSERT INTO
  user (id, name)
VALUES
  (2, 'Suzuki');

-- 全カラムに値を入力する
INSERT INTO
  -- user (id, name, address)の(id..)は不要
  user
VALUES
  (3, 'Hoshino', default);

-- defaultでそれ以降をまとめることは出来ない
-- => ERROR: Column count doesn't match value count at row 1
INSERT INTO
  user
VALUES
  (4, default);

-- すべてをデフォルト値にする
insert into
  user ()
values
  ();

-- seisekiテーブルのカラムはname, suugaku, kokugo, goukeiとする
insert into
  seiseki
values
  -- goukeiに式を使用している
  ('Yamada', 85, 72, suugaku + kokugo);

-- mycolorテーブルのカラムはid, nameとする
insert into
  mycolor
values
  -- 1つのINSERT文で、複数データの登録
  (1, 'Red'),
  (2, 'Blue'),
  (3, 'Yellow');