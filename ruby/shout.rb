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