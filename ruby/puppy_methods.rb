#PUPPY CLASS
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

#DRIVE CODE FOR PUPPY CLASS
martin=Puppy.new

martin.fetch("ball")
martin.speak(5)
martin.roll_over
martin.dog_years(8)
martin.amount_food(4,10)

class Board_game
		def initialize
		puts "Initializing new board game instance..."
	end
	def roll_die (number)
		puts "Rolling dice"
		i=0
		until i==number
		die=1 + rand(6)
		i+=1
		puts "Die #{i}: #{die}"
		end
	end

	def dev_card
		development_cards=[]
		14.times do
			development_cards<<"Knight"
		end
		5.times do
			development_cards<<"Victory Point"
		end
		2.times do
			development_cards<<"Road Building Card"
			development_cards<<"Monopoly Card"
			development_cards<<"Year of Plenty"
		end
		card=1+rand(development_cards.length)
		puts "You now have a #{development_cards[card]} card"
	end


end

catan=Board_game.new

catan.roll_die(2)
catan.dev_card