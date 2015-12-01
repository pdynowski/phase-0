# Virus Predictor

# I worked on this challenge with KB DiAngleo.
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative

# It tells the program that an outside file is required to run properly.
# require_relative tells the compiler to look for the file in a relative path
# starting from the same directory.

# It differs from require in that require calls for an absolute path to the
# required file instead of the relative path.

require_relative 'state_data'

class VirusPredictor

  # initializes class with state and state data from hash
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls other methods to get the results of virus simulation
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # calculates # of deaths based on population density and population and prints line
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when 1..49 then death_factor = 0.05
    when 50..99 then death_factor = 0.1
    when 100..149 then death_factor = 0.2
    when 150..199 then death_factor = 0.3
    else death_factor = 0.4
    end
    
    deaths = (@population*death_factor).floor
    
    print "#{@state} will lose #{deaths} people in this outbreak"

  end

  
  # calculates how long it will take virus to spread across state given population density and prints result
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    time_in_months = 0.0
    
    case @population_density
    when 1..49 then time_in_months += 2.5
    when 50..99 then time_in_months += 2
    when 100..149 then time_in_months += 1.5
    when 150..199 then time_in_months += 1.0
    else time_in_months += 0.5
    end

    puts " and it will spread across the state in #{time_in_months} months.\n\n"

  end

end

#--------------------------------------------------
=begin
Pseudocode for how to present all 50 states in a DRY way
1. Iterate over state data
2. Create a new virus predictor for every state
3. Run virus_effects method for every state
=end



STATE_DATA.each do |state, state_data|
  
  current_state = VirusPredictor.new(state, state_data[:population_density], state_data[:population])
  
  current_state.virus_effects
  
end





#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the
state_data file?

The difference between the hash syntaxes is that the outer hash uses strings
as keys while the inner hash uses symbols as keys. This has implications for
both speed of access and memory usage - generally, the symbol method will take
up less space in memory and allow for faster access. Strings are still
appropriate for the outside hash, though - each state name string is going to
be different anyway, so it's okay that each one will need its own space in
memory. However, since each hash that is keyed by the state names uses the
same values, it's much better to use symbols for the inner hash.

What does require_relative do? How is it different from require?

require_relative tells the Ruby compiler to go look for a file that is
required for the operation of the current file/program, on a path that starts
in the directory of the current file. It differs from require in that require
needs an absolute path to the file that is needed (with the path beginning
either at the home directory, or some user-defined environmental directory.)


What are some ways to iterate through a hash?

Well, there's what we used today, which is the ever-popular hash.each do |key,
value| method. One could also choose to iterate only over the keys, or only
over the values. Generally, anything else that one would say is iterating over
the hash (eg: map, reduce, etc) is built on the each method, and so is really
just another way of using each, anyway.

When refactoring virus_effects, what stood out to you about the variables, if
anything?

For some reason, the initial author of the code decided they needed to pass
instance variables into methods. This is...unnecessary, to say the least, as
instance variables are, by definition, available to all the methods in the
class.

What concept did you most solidify in this challenge?

Conceptually, the thing I most solidified was the range method for working
with case statements - I had almost forgot that that was possible, and it
really makes the code much shorter (and easier to read, in my opinion).

=end