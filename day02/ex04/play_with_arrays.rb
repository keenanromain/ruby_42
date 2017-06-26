#!/usr/bin/ruby 

first = [2, 8, 9, 48, 8, 22, -12, 2]
puts first.to_s
second = first.map do |n| 
	n + 2
end
puts second.to_s
