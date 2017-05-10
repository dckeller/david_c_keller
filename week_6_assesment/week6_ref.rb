class Dancer
	attr_accessor :age, :card
	attr_reader :names

	def initialize(names, age)
		@names = names
		@age = age
		@card = []
	end

	def names
		@names
	end

	def age
		@age
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
p dancer.spin