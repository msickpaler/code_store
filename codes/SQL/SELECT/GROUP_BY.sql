-- GROUP BY を使用する際はどんな時でしょう？それは欲しいデータが「単一のデータ」だけではなく、「複数のデータを集計した計算結果」も含まれている場合です。
-- GROUP BY を使用してエラーが出てしまう場合は真っ先に SELECT 句に書いてあるフィールドを疑ってみて下さい。集計関数を使うべきなのに素のフィールドを取得しようとしている場合がほとんどでしょう。
SELECT
  old,
  COUNT(old) as cou
FROM
  friends
GROUP BY
  old;

-- HAVINGはGROUP BYなしでは使わないだろう。group byでuserごとに集計した値に下限を設定したりする。
-- whereではcouを参照できない。順番の問題だと思われる
SELECT
  old,
  COUNT(old) as cou
FROM
  friends
GROUP BY
  old
HAVING cou > 1;
