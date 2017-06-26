#!/usr/bin/ruby 

if ARGV.empty?
	puts "none"
else
	puts "parameters: #{ARGV.size}"
	ARGV.each do |x|
		puts "#{x}: #{x.size}"
	end
end
