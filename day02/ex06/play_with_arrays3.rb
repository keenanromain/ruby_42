#!/usr/bin/ruby 

first = [2, 8, 9, 48, 8, 22, -12, 2]
puts first.to_s
first.reject! {|x| x <= 3}
first.map! do |n|
	n + 2
end
puts first.to_s
