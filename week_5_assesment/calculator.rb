def calculator(option, val1, val2)	
	
	if option == "+"
		val1 + val2
	elsif option == "-"
		val1 - val2
	elsif option == "*"
		val1 * val2
	elsif option == "/"
		val1 / val2
	else
		puts "Sorry, does not compute"
	end 
end 

puts "Welcome to the Calculator program!"
puts "Would you like to make a calculation? If yes enter 'yes' if not enter 'done'"
continue = gets.chomp
while continue != 'done'
calc_array = []
	puts "Great, lets continue"
	puts "--------------------------------"
	puts "Please give me a number:"
	val1 = gets.chomp.to_i
	puts "Please give me another number:"
	val2 = gets.chomp.to_i
	puts "Would you like to +, -, *, or /"
	option = gets.chomp.to_s