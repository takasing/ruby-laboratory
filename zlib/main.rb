#!/usr/bin/env ruby

require './zgrep_module'

include ZgrepModule

zgrep(ARGV[0],ARGV[1])

