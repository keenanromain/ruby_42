#!/usr/bin/ruby 

def usage(copy)
	num = 1
	copy.each do |spot|
		if spot == " "
			spot = num
			num += 1
		end
		print spot
	end
	print "\n"
end

def line()
	print "\n"
	print "-_-_-_-_-_-_-_-_-_-_-_-"
	print "\n"
end

def win(array, person, mark)
	if array[0] == mark and array[2] == mark and array[4] == mark
		puts "#{person} wins the game!"
		return 1
	elsif array[7] == mark and array[9] == mark and array[11] == mark
		puts "#{person} wins the game!"
		return 1
	elsif array[14] == mark and array[16] == mark and array[18] == mark
		puts "#{person} wins the game!"
		return 1
	elsif array[0] == mark and array[7] == mark and array[14] == mark
		puts "#{person} wins the game!"
		return 1
	elsif array[2] == mark and array[9] == mark and array[16] == mark
		puts "#{person} wins the game!"
		return 1
	elsif array[4] == mark and array[11] == mark and array[18] == mark
		puts "#{person} wins the game!"
		return 1
	elsif array[0] == mark and array[9] == mark and array[18] == mark
		puts "#{person} wins the game!"
		return 1
	elsif array[4] == mark and array[9] == mark and array[14] == mark
		puts "#{person} wins the game!"
		return 1
	else
		return 0
	end
end

def input(array, mark)
	print "Choose a number from above: "
	input = gets.chomp.to_i
	line
	print "\n"
	if input == 1 and array[0] == " "
		array[0] = mark
		return 0
	elsif input == 2 and array[2] == " "
		array[2] = mark
		return 0
	elsif input == 3 and array[4] == " "
		array[4] = mark
		return 0
	elsif input == 4 and array[7] == " "
		array[7] = mark
		return 0
	elsif input == 5 and array[9] == " "
		array[9] = mark
		return 0
	elsif input == 6 and array[11] == " "
		array[11] = mark
		return 0
	elsif input == 7 and array[14] == " "
		array[14] = mark
		return 0
	elsif input == 8 and array[16] == " "
		array[16] = mark
		return 0
	elsif input == 9 and array[18] == " "
		array[18] = mark
		return 0
	end
	return 1
end

print "Welcome to Intergalactic Tic Tac Toe!\n\n"
array = [" ", "|", " ", "|", " ", "\n", "______\n"," ", "|", " ", "|", " ", "\n", "______\n", " ", "|", " ", "|", " ", "\n"]
array.each do |spot|
	print spot
end
print "\n"
print "Player 1, please enter your name: "
first = gets.chomp
print "Player 2, please enter your name: "
second = gets.chomp
print "\n"
print "\033[01;33m#{first}\033[0m, it's your turn to set an 'x' on the board. Will you choose a square?\n\n"
copy = array.clone
usage(copy)
turn = true
draw = 1
loop do
	if turn == true
		mark = "\033[01;33mx\033[0m"
		person = "\033[01;33m#{first}\033[0m"
		turn = false
	else
		mark = "\033[01;36mo\033[0m"
		person = "\033[01;36m#{second}\033[0m"
		turn = true
	end
	if input(array, mark) == 1
		print "\033[01;31mInvalid entry! try again: \033[0m\n\n"
		usage(copy)
		array.each do |spot|
			print spot
		end
		line
		print "\n"
		turn == false ? turn = true : turn = false
		next
	end
	usage(copy)
	array.each do |spot|
		print spot
	end
	line
	print "\n"
	if win(array, person, mark) == 1
		break
	elsif (draw += 1) > 9
		puts "Draw game! Play again?"
		break
	end
	print turn == true ? "\033[01;33m#{first}\033[0m's turn. " : "\033[01;36m#{second}\033[0m's turn. "
end
