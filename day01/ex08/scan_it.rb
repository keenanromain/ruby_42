#!/usr/bin/ruby 

puts ARGV.empty? ? "none" : "#{ARGV[1].scan(/#{ARGV[0]}/).size}"
