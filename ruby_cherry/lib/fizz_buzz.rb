# 3で割り切れる数値を引数に渡すと、“Fizz”を返す。
# 5で割り切れる数値を引数に渡すと、“Buzz”を返す。
# 15で割り切れる数値を引数に渡すと、“FizzBuzz”を返す。
# それ以外の数値はその数値を文字列に変えて返

arg = 30
def fizz_buzz(arg)
  if arg % 15 == 0
    puts 'FizzBuzz'
  elsif arg % 3 == 0
    puts 'Fizz'
  elsif arg % 5 == 0
    puts 'Buzz'
  else
    puts arg
  end
end
fizz_buzz(arg)
