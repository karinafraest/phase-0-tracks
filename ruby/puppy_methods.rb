class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(many)
  	many.times{puts "Woof"}
  end

  def roll_over
  	puts "rolls over"
  end

  def dog_years (age)
  	dog_years=age*7
  	puts "Your dog is #{dog_years} in dog years."
  	dog_years
  end

  def amount_food(age, weight)
  	cup=""
  	times=0
  	type=""
  	twice="2"
  	adult="Adult food only."

	  	if age<6
	  		cup="1/2"
	  		times=3.to_s
	  		type="Puppy food only."
	  	elsif age<12
	  		cup="3/4"
	  		times=twice
	  		type="Puppy food only."
	  	elsif age==12
	  		cup="3/4"
	  		times=twice
	  		type="Puppy and adult food"
	  	elsif age.is_a?
	  		if weight<25
	  			cups=1.to_s
	  		elsif weight<50
	  			cups=2.to_s
	  		else 
	  			cups="2-4"
	  		end
	  		times=twice
	  		type=adult
	  	else
	  		puts "That is not a number."
	  	end
	  	puts "Your dog should eat #{cup} cups #{times} times a day. #{type}"
	end

	def initialize
		print "Initializing new puppy instance..."
	end
end


martin=Puppy.new

martin.fetch("ball")
martin.speak(5)
martin.roll_over
martin.dog_years(8)
martin.amount_food(4,10)