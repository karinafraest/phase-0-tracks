class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(many)
  	many.times{puts "Woof"}
  end

end


martin=Puppy.new

martin.fetch("ball")
martin.speak(5)