#!/usr/bin/env ruby

if ARGV.empty?
	puts "none"
	return
end
args = ARGV.map { |arg| arg.downcase}
vowels = ['a', 'e', 'i', 'o', 'u']
args.each do |word|
    first_char = word[0]
    new_word = vowels.include?(first_char) ? word + "way" : new_word = word[1...word.length] + first_char + "ay"
    puts new_word
end
