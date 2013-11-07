require './hello'
require './french_hello'

# 初期化
hello = Hello.new
count = Hello.count
puts count
# setter
hello.name = "hoge"
# getter
puts hello.name
# call
hello.greet
# static method
count = Hello.count
puts count
# french
french = FrenchHello.new
french.name = "french"
french.greet

