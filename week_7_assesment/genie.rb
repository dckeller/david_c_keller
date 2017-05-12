class Genie
	attr_accessor :name
	attr_reader :age 

	def initialize(name, age)
		@name = name
		@age = age
		@submitted_wishes = {}
		@wish_array = []
	end

	def about
		genie_name = "His name is #{@name}."
		genie_age = "He is #{@age} years old."
		puts genie_name
		puts genie_age
		return genie_name
	end

	def enter_lamp
		@enter_lamp = false
	end

	def exit_lamp
		@exit_lamp = true
	end

	def grant_wish(wish)
		@wish = wish
		@exit_lamp
		@wish_array << wish
		print "Your wish of #{wish},"
		if @wish_array.count <= 3
			@submitted_wishes[@wish] = true
			puts " has been granted!"
		else @wish_array.count > 3
			@submitted_wishes[@wish] = false
			@enter_lamp
			puts " has not been granted, you have no more wishes!"
		end
	end   

	def display_wish_history
		puts "Here are your wishes so far:"
		puts "---------------"
		@submitted_wishes.each do |wish, granted|
			puts "#{wish} #{granted}"
		end 
		puts "---------------"
	end

=begin
	def favorite_wish
			@submitted_wishes.keys.each do |count_vowels|
				total_vowels = count_vowels.count "aeiou"
				puts total_vowels
			end 
	end 
=end 

	def favorite_wish
		result = nil
		max = 0
		@submitted_wishes.keys.each do |value|
			vowels = value.scan(/[aeiouy]/).size
			if vowels > max
				max = vowels
				result = value
				puts "My favorite wish to grant is #{result}!"
			end
		end
	end

end

genie = Genie.new("Bob", 20)
genie.about
puts ''
genie.grant_wish("a pony")
genie.grant_wish("a car")
genie.grant_wish("a plane")
genie.grant_wish("a man")
genie.grant_wish("a candy")
puts ''
genie.display_wish_history
puts ''
genie.favorite_wish


##aladdin = Genie.new("Abubu", 203)
##aladdin.about
