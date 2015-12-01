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