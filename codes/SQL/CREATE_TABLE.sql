-- 基礎
CREATE TABLE [IF NOT EXISTS] db_name.tbl_name (col_name data_type,...);

-- db外から追加
CREATE TABLE test1.user (id int, name varchar(10));

-- db内から追加
-- 既存のテーブルの場合エラーを吐かないようにする
CREATE TABLE IF NOT EXISTS test1.user (id int, name varchar(10));

-- 既存のテーブルの場合エラーを吐かないようにする
CREATE TABLE IF NOT EXISTS product (id int, name varchar(10));

-- 文字セットや照合順序を指定してテーブルを作成
CREATE TABLE product3 (id int, name varchar(10), col varchar(10)) CHARACTER SET cp932 COLLATE cp932_bin;

-- default値を指定して作成
create table mycolor (id int default 0, name varchar(10));