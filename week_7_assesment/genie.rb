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


##aladdin = Genie.new("Abubu", 203)
##aladdin.about
