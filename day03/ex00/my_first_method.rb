def derp(s)
	s.length <= 10 ? s = nil : s.upcase!
end

puts derp("abc")
puts derp("abcdefghijklmnop")
