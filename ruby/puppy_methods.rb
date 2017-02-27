class Puppy

 	def fetch(toy)
    	puts "I brought back the #{toy}!"
    	toy
  	end

 	def speak(num) 
  		num.times {puts "Woof"} 
	end 

	def roll_over
		puts "Roll over!"
	end 

	def dog_years(num)
		dog_age = num * 7 
		return dog_age
	end

	def sit
		puts "Sit down!"
	end  

	# implicitly called 
	# accidentally spelling initialize doesn't throw error
	def initialize
		puts "Initializing new puppy instance ..."
	end 

end 

# can call fetch 
# new triggers the initialize 
spot = Puppy.new

spot.fetch("bone")

# spot.speak(3)

# spot.roll_over

# p spot.dog_years(4)

# spot.sit