#!/usr/bin/ruby

print "Please tell me your age: "
input = gets
puts "You are currently #{input.chomp!} years old."
puts "In 10 years, you'll be #{input.to_i + 10} years old."
puts "In 20 years, you'll be #{input.to_i + 20} years old."
puts "In 30 years, you'll be #{input.to_i + 30} years.old"

