# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    lower_limit=200
    multiplier=0.4
    number_of_deaths=0

    until number_of_deaths!=0
      if @population_density >=lower_limit
        number_of_deaths=@population*multiplier
      end
      lower_limit-=50
      if lower_limit<50 
        multiplier=0.05
      else
        multiplier-=0.1
      end
    end

    number_of_deaths=number_of_deaths.floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#s

 # Predicts the speed of spread based on pop density
  def speed_of_spread #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
  speed = 0.0
  speed=(0.5 if @population_density >=200) || (1.0 if @population_density >=100) || (1.5 if @population_density >=100) || (2.0 if @population_density >= 50) || 2.5


  puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, data|
  state_name = VirusPredictor.new(state, data[:population_density], data[:population])
  state_name.virus_effects
end

#=======================================================================
# Reflection Section
#What are the differences between the two different hash syntaxes shown in the state_data file?
#"Key"=> "value" <----The key is a string. If printed, it looks pretty
#key: "value" <----The keyis a symbol, symbols are unique, you can't have a symbol with spaces(name_of_movie instead of "Name of movie")

#What does require_relative do? How is it different from require?
#Calls data in a file that is in the same directory as the file you are working on.
#Require is somewhere in the rooted directory of Ruby, it stores Gems.

#What are some ways to iterate through a hash?
#using a loop that calls both the key and value

#When refactoring virus_effects, what stood out to you about the variables, if anything?
#They are floats and work different than integers. They have to be rounded. If you add an integer to a float it gives you a float.

#What concept did you most solidify in this challenge?
#How to iterate nested data. I keep forgetting that there are easier ways to do things.
