#!/usr/bin/ruby 

if ARGV.empty? || ARGV.length == 1
	puts "none"
else
	ARGV.reverse.each do |x|
		puts x
	end
end
