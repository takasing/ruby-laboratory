#!/usr/bin/env ruby

require 'zlib'

if ARGV.size != 2
  puts "usage: ruby #{File.basename(__FILE__)} searched filename"
end

#Zlib::GzipReader.open(ARGV[1]) do |gz|
#  # read all line at a time.
#  #puts gz.read
#  
#  # endless <Enumerator:~~~~~~~~
#  #while line = gz.each
#  #  puts line
#  #  puts "-----"
#  #end
#
#  # OK
#  #while line = gz.gets
#  #  puts line
#  #  puts "-----"
#  #end
#  
#  gz.each { |line|
#    if /#{ARGV[0]}/ =~ line
#      puts line
#    end
#  }
#end

# TODO:keyword parameter
module ZgrepModule
  def zgrep(str,filepath)

    if File.extname(filepath) != ".gz"
      puts "File extension isn't gzip."
      exit 1
    end

    Zlib::GzipReader.open(filepath) do |gz|
      gz.each { |line|
        if /#{str}/ =~ line
          puts line
        end
      }
    end
  end
end

# main
include ZgrepModule
zgrep(ARGV[0],ARGV[1])

