class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender
	def initialize (gender,ethnicity)
		puts "Initializing new instance of Santa..."
		@gender=gender
		@ethnicity=ethnicity
		@reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age=0
	end

	def speak
		puts"Ho, ho, ho! Haaaappy holidays!"
	end #speak

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!!"
	end #eat_milk_and_cookies

	def brag
		if !(@gender=="prefer not to say" || @gender=="N/A")
			print "I am the best #{@gender} santa there is!"
			if @ethnicity=="prefer not to say" || @ethnicity=="N/A"
				puts
			else
				puts" Not to mention I am #{@ethnicity}!" 
			end
		else
			if !(@ethnicity=="prefer not to say" || @ethnicity=="N/A")
				puts "I am the best #{@ethnicity} santa there is!"
			end
		end
	end #brag

	def celebrate_birthday(age)
		@age=age+1
		@age
	end

	def reindeer_ranking
		@reindeer_ranking
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking=@reindeer_ranking- [reindeer_name]
		@reindeer_ranking<<reindeer_name
		@reindeer_ranking
	end
end # class

#DRIVER CODE RELEASE 0
#young_santa=Santa.new

#young_santa.speak
#young_santa.eat_milk_and_cookies("snickerdoodle")



#DRIVER CODE RELEASE 1,2
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
santas << Santa.new("N/A", "indian")

santas.each do |santa|
	santa.speak
	santa.brag
	santa.eat_milk_and_cookies("chocolate chip cookie")
	santa.celebrate_birthday(50)
	santa.get_mad_at("Rudolph")
	santa.gender="Attack helicopter"
	p santa.age
	p santa.ethnicity
end