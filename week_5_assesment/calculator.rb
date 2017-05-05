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