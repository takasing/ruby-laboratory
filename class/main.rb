require './hello'
require './french_hello'

# 初期化
hello = Hello.new("hoge")
# getter
puts hello.name
# call
hello.greet
# static method
count = Hello.count
puts count
# setter
hello.name = "fuga"
hello.greet
count = Hello.count
puts count
double = Hello.double
puts double
# french
french = FrenchHello.new("french")
french.greet

