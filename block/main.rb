#!/usr/bin/env ruby
require './embed'
require './block'

# loop
array = [1, 2, 3, 4, 5]
array.each do |i|
  puts i
end

# embed process
include Embed
exec do
  puts "execute!!"
end

include Block
block_method
block_method do |greet|
  puts "#{greet}!"
end

# no block no param
double_param
# no param
double_param do |greet, name|
  puts "#{greet}! #{name}!!"
end
# param
double_param "Bonjour", "takasing" do |greet, name|
  puts "#{greet}! #{greet}!! #{name}!!!"
end

