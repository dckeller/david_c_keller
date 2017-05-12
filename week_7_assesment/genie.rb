class Genie

def initialize(name, age)
	@name = name
	@age = age
end

def about
	genie_name = "His name is #{@name}."
	genie_age = "He is #{@age} years old."
		puts genie_name
		puts genie_age
end  
end

genie = Genie.new("Bob", 20)
genie.about 