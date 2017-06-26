def greetings(name = nil)
	if name == nil
		puts "Hello, noble stranger."
	elsif name.is_a? String
		puts "Hello, #{name}"
	else
		puts "Error! That doesn't sound like a name."
	end
end

greetings("lucie")
greetings()
greetings(22)
