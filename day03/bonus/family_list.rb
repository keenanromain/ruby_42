#!/usr/bin/ruby

def derp
	hash = Hash.new
	loop do
		print "Hello, what is someone's name?: "
		if (first = gets.chomp) == "DONE"
            break
        end
		print "And who is that person to you:? "
		if (second = gets.chomp ) == "DONE"
            break
		end
		hash[first] = second.to_sym
	end
	puts "Cool, here is your family!"
	hash
end

p derp
