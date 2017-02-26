class Santa
	def speak
		puts"Ho, ho, ho! Haaaappy holidays!"
	end #speak

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!!"
	end #eat_milk_and_cookies

	def initialize
		puts "Initializing new instance of Santa..."
	end
end # class

young_santa=Santa.new

young_santa.speak
young_santa.eat_milk_and_cookies("snickerdoodle")