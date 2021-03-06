# Ruby methods

---

## capitalize

examples

```ruby

"aaa".capitalize
# => "Aaa"
```

```ruby
a = "i have A pen"
a.split.map(&:capitalize).join(' ')
# => "I Have A Pen"
```

link

-

notes

---

## length, size

examples

```ruby
[1, 2, 3].size #=> 3

{name: "Taro", age: 20, sex: "male" }.size #=> 3

"aiueo".size #=> 5
```

link

-

notes

- size は length のエイリアス

## count

examples

```ruby
# String
ary = [1, 2, 4, 2]
ary.count             # => 4
ary.count(2)          # => 2
ary.count{|x|x%2==0}  # => 3
```

```ruby
# Enumerable
p 'abcdefg'.count('c')               # => 1
p '123456789'.count('2378')          # => 4

# 複数指定はAND条件
p '123456789'.count('2-8', '^4-6')   # => 4 (2,3,7,8)
```

link

- [Enumerable count reference](https://docs.ruby-lang.org/ja/latest/method/Enumerable/i/count.html)
- [String count reference](https://docs.ruby-lang.org/ja/latest/method/String/i/count.html)

notes

- 一致は == で判定

---

## sub

examples

```ruby
str = "abc"
str.sub("ab", "") #=> "c"
p str #=> "abc"

# 破壊的
str.sub!("ab", "")
p str #=> "c"

# 結果をブロックに渡せる
str = "apple orange melon"
puts str.sub(/apple/) {|w| w.upcase } #=> APPLE orange melon

# これが一番早い
str = "apple orange melon"
str["apple "] = "aa"
p str #=> "aaorange meron"
```

link

- [sub reference](https://docs.ruby-lang.org/ja/latest/method/String/i/sub.html)
- [which fastest(sub gsub =)](https://github.com/JuanitoFatas/fast-ruby/blob/master/code/string/gsub-vs-sub.rb)

notes

- 問題がなければ正規表現ではなく文字列で ok
- 初めにマッチした部分のみ置換

## gsub

examples

```ruby
# 基本的にsubと同じ
```

link

- [gsub reference](https://docs.ruby-lang.org/ja/latest/method/String/i/gsub.html)
- [文字列の置換方法まとめ（gsub sub regex）](https://www.sejuku.net/blog/14685)

notes

- マッチした部分全てを置換

---
