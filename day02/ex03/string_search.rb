#!/usr/bin/ruby 

check = 1

if ARGV.length != 1
	puts "none"
else
	ARGV[0].each_char do |x|
		if x == "z"
			print "z"
			check += 1
		end
	end
	print check == 1 ? "none\n" : "\n"
end
