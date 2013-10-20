#!/usr/bin/env ruby

require 'zlib'

if ARGV.size != 2
  puts "usage: ruby #{File.basename(__FILE__)} searched filename"
end

Zlib::GzipReader.open(ARGV[1]) do |gz|
  # read all line at a time.
  #puts gz.read
  
  # endless <Enumerator:~~~~~~~~
  #while line = gz.each
  #  puts line
  #  puts "-----"
  #end

  # OK
  #while line = gz.gets
  #  puts line
  #  puts "-----"
  #end
  
  gz.each { |line|
    if /#{ARGV[0]}/ =~ line
      puts line
    end
  }
end

