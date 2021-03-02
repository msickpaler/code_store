a = "i am 'A'"
# a && puts a #=> this is (a && puts) a
a && puts(a)
# or
a and puts a

a = nil
# a || puts a #=> this is (a || puts) a
a || puts('a is nil')
# or
a or puts 'a is nil'

# &&や||や優先順位が高いから、周辺のものをくっつけてしまい、puts aのputsだけ取られてエラーになる
