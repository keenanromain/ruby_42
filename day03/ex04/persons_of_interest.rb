#!/usr/bin/ruby

def great_births(input)
	names = Array.new
	input.each {|key, value| names.push(value)}
	names.sort_by! { |hash| hash[:year_of_birth] }
	names.each { |person| puts "#{person[:name].to_s} is a great person born in #{person[:year_of_birth].to_s}." }
end

women_in_science = {
	:ada => { :name => "Ada Lovelace", :year_of_birth => "1815" },
	:cecilia => { :name => "Cecila Payne", :year_of_birth => "1900" },
	:lise => { :name => "Lise Meitner", :year_of_birth => "1878" },
	:grace => { :name => "Grace Hopper", :year_of_birth => "1906" }
}

great_births(women_in_science)
