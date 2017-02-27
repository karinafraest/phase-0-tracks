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
#spot = Puppy.new

#spot.fetch("bone")

# spot.speak(3)

# spot.roll_over

# p spot.dog_years(4)

# spot.sit

class Kitten
	def initialize
		puts "Initializing new Kitten instance..."
	end

	def purr
		puts "Purring :3"
	end

	def cat_years (age)
		cat_years=age*9
		cat_years
	end
end

kittens=[]
counter=0

until counter==50
	kittens<<Kitten.new
	counter+=1
end

kittens.each do |cat|
	cat.purr
	p cat.cat_years(5)
end


#mr_boots.purr
#p mr_boots.cat_years(2)