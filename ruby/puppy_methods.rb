class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

martin=Puppy.new

martin.fetch("ball")