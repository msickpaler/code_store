# returnあり
def some_method(n)
  1 / n
  'OK'
ensure
  p 'ensure'
  return 'ensure'
end
p some_method(0)
#=>
# "ensure"
# "ensure"

# returnなし。ちゃんとエラーメッセージ出る
def some_method(n)
  1 / n
  'OK'
ensure
  p 'ensure'
  'ensure'
end
p some_method(0)
# "ensure"
# /Users/kenya/code_store/ruby_cherry/e/tempCodeRunnerFile.rb:2:in `/': divided by 0 (ZeroDivisionError) from /Users/kenya/code_store/ruby_cherry/e/tempCodeRunnerFile.rb:2:in `some_method' from /Users/kenya/code_store/ruby_cherry/e/tempCodeRunnerFile.rb:8:in `<main>'
