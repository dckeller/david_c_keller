class Dancer
	attr_accessor :age, :card
	attr_reader :names

	def initialize(names, age)
		@names = names
		@age = age
		@card = []
	end  

	def pirouette
		"*twirls*"
	end 

	def bow
		"*bows*"
	end

	def queue_dance_with(names)
		@card << names
	end

	def begin_next_dance
		new_list = @card.delete_at(0)
		"Now dancing with #{new_list}."
	end 

	def spin
		"*spin*"
	end 
end 

dancer = Dancer.new("Misty Copeland", 33)
p dancer.names
p dancer.age
p dancer.age = 34
p dancer.pirouette
p dancer.bow
p dancer.queue_dance_with("Mike Bary")
p dancer.queue_dance_with("Anna Pav")
dancer.begin_next_dance
p dancer.spin