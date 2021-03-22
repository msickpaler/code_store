-- 存在した場合エラーを吐く
CREATE DATABASE test1;

-- 存在した場合エラーを吐かない
CREATE DATABASE IF NOT EXISTS test2;

-- 文字セットと照合順序の指定（省くとmy.iniの設定が使われる)
CREATE DATABASE test3 CHARACTER SET cp932 COLLATE cp932_bin;