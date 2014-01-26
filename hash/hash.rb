#!/usr/bin/env ruby

# シンボルがKey
hash = {name: "takasing", address: "shibuya"}
old_hash = {:name => "takasing", :address => "shibuya"}
# Keyは文字列でも良い
str_hash = {"name" => "takasing", "address" => "shibuya"}

puts hash[:name]
puts old_hash[:name]
puts str_hash["name"]

