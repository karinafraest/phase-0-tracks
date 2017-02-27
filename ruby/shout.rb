=begin
module Shout
	def self.yell_angrily(words)
		words+"!!!"+ ": ("
	end

	def self.yelling_happily(words)
		words+"!!!"+ ": D "+ words +"!!!" #repetition for maximum happyness
	end
end

p Shout.yell_angrily("This is horrible")
p Shout.yelling_happily("Yeepy")
=end

module Shout
	def scream(words)
		puts "#{words.upcase}!!!!!!"
	end

	def happy_yell(words)
		puts "#{words}!!!:D"
	end
end

class Baby
	include Shout
end

class Banshee
	include Shout
end

baby=Baby.new
baby.scream("Milk,now")
baby.happy_yell("Mommy")

banshee=Banshee.new
banshee.scream("Death, now")
banshee.happy_yell("I love flying")
