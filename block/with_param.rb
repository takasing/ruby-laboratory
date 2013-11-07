#!/usr/bin/env ruby
require './block'
include Block

# no block no param
# => Hello, hoge
double_param 

# no param
# => Hello! hoge!!
double_param do |greet, name|
  puts "#{greet}! #{name}!!"
end

# param
# => Bonjour! Bonjour!! takasing!!!
double_param "Bonjour", "takasing" do |greet, name|
  puts "#{greet}! #{greet}!! #{name}!!!"
end

