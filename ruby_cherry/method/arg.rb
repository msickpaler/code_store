def greeting(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
greeting #=>"こんにちは"
greeting('us') #=>"hello"

# システム日時やほかのメソッドの戻り値をデフォルト値に指定する
def foo(time = Time.now, message = bar)
  puts "time:#{time},message:#{message}"
end

# 引数に入れると弄ってしまえるからバグの温床になる。引数として操作する必要がある場合のみ行おう

def bar
  'BAR'
end
# 二番目の引数のみ指定はできない？
foo(nil) #=>time:,message:BAR

def symbol_foo(time: Time.now, message: bar)
  puts "time:#{time},message:#{message}"
end
# シンボルなら簡単に一部のみ指定できる。
symbol_foo(message: 'this is message')
#=>time:2021-02-21 10:01:10 +0900,message:this is message
