#!/usr/bin/env ruby
require './block'
include Block

# no block no param
double_param

# no param
double_param do |greet, name|
  puts "#{greet}! #{name}!!"
end

# param
double_param "Bonjour", "takasing" do |greet, name|
  puts "#{greet}! #{greet}!! #{name}"
end

