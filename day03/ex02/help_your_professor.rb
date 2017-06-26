def average_mark(average)
	tmp = 0
	average.each do |x, y|
		tmp += y
	end
	tmp /= average.length
end

class_csci101 = {
	"margot" => 18,
	"june" => 8,
	"colin" => 15,
	"lewis" => 9
}

class_csci102 = {
	"quentin" => 17,
	"julie" => 15,
	"mark" => 8,
	"stephanie" => 13
}

puts "Average mark for the CSCI 101 class: #{average_mark class_csci101}."
puts "Average mark for the CSCI 102 class: #{average_mark class_csci102}."
