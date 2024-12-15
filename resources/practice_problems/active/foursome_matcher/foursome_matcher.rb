# Golf Trip Preference Matcher

# You're building a feature that helps match golfers with compatible playing partners.
# Create a method called 'find_compatible_groups' that processes player preferences
# and suggests optimal foursomes (groups of 4).

# The method should accept:
# - players: an array of hashes containing player information
# - minimum_groups: minimum number of complete foursomes needed (integer)

# Each player hash contains:
#   name: (string)
#   handicap: (integer)
#   preferences: {
#     walking_only: (boolean),
#     pace_of_play: ('fast', 'medium', 'relaxed'),
#     preferred_tee_time: ('early', 'mid', 'late'),
#     skill_level_preference: ('similar', 'any')
#   }

# Rules for creating foursomes:
# 1. If a player prefers 'similar' skill_level_preference, they should be grouped
#    with players within 5 handicap strokes
# 2. Players who prefer walking_only: true should be grouped together
# 3. All players in a group should have compatible pace_of_play:
#    - 'fast' only matches with 'fast' or 'medium'
#    - 'relaxed' only matches with 'relaxed' or 'medium'
#    - 'medium' matches with any pace
# 4. Preferred tee times should match when possible, but this is lowest priority

# The method should:
# - Return an array of compatible foursomes
# - Each foursome should be a hash containing:
#   - players: array of player names
#   - average_handicap: (rounded to 1 decimal)
#   - suggested_tee_time: most common preferred time in group
#   - walking_only: true if any player in group requires walking
# - If minimum_groups cannot be created, return nil
# - Prioritize creating the most compatible groups possible

# Bonus challenge:
# Add a compatibility_score (0-100) to each group showing how well the
# preferences match, and sort groups by this score

### PROGRAM: foursome_matcher.rb ###
require_relative 'test_players'
require 'pp'

def find_compatible_groups(players, minimum_groups)
    validate_input_data(players, minimum_groups)
    
    walking_players = get_walking_players(players)
    riding_players = get_riding_players(players)
    
    return nil unless enough_players?(walking_players, riding_players, minimum_groups)
    
    walking_players_enriched = enrich_player_data(walking_players)
    riding_players_enriched = enrich_player_data(riding_players)

    foursomes_walkers = []
    

    
    # # Output enriched test data
    # File.open("test_players_enriched.rb", "w") do |file|
    #     file.puts(walking_players_enriched.inspect)
    #     # PP.pp()
    # end
end

### Helper Methods ###
def validate_input_data(players, minimum_groups)
    raise ArgumentError, "There must be atleast 4 golfers in players array" if players.length < 4
    raise TypeError, "The players array must be an array of hashes" unless players.all? {|player| player.is_a?(Hash)}
    raise ArgumentError, "The player hash must have only 3 keys: :name, :handicap, :preferences" unless players.all? do |player|
        player.length == 3 && player.keys == [:name, :handicap, :preferences]
    end
    raise TypeError, "The player name must be a string" unless players.all? {|player| player[:name].is_a?(String)}
    raise TypeError, "The player handicap must be an integer" unless players.all? {|player| player[:handicap].is_a?(Integer)}
    raise TypeError, "The player preferences must be a hash with only 4 keys: :walking_only, :pace_of_play, :preferred_tee_time, :skill_level_preference" unless players.all? do |player|
        player[:preferences].is_a?(Hash) && player[:preferences].length == 4 && player[:preferences].keys == [:walking_only, :pace_of_play, :preferred_tee_time, :skill_level_preference] 
    end
    raise TypeError, "The player walking preference must be a boolean" unless players.all? {|player| [true, false].include?(player[:preferences][:walking_only])}
    raise TypeError, "The pace of play preference must be a string" unless players.all? {|player| player[:preferences][:pace_of_play].is_a?(String)}
    raise TypeError, "The tee time preference must be a string" unless players.all? {|player| player[:preferences][:preferred_tee_time].is_a?(String)}
    raise TypeError, "The skill level preference must be a string" unless players.all? {|player| player[:preferences][:skill_level_preference].is_a?(String)}
    raise TypeError, "The minimum groups must be an integer" unless minimum_groups.is_a?(Integer)
    raise TypeError, "The minimum groups must be greater than 0" unless minimum_groups > 0
end

def get_walking_players(players)
    players.select {|player| player[:preferences][:walking_only] == true}
end

def get_riding_players(players)
    players.select {|player| player[:preferences][:walking_only] == false}
end

def enough_players?(walkers, riders, minimum_groups)
    possible_walking_groups = walkers.length / 4
    possible_riding_groups = riders.length / 4
    possible_walking_groups + possible_riding_groups >= minimum_groups
end

def enrich_player_data(players)
    handicap_range_added = add_handicap_ranges(players)
    add_compatible_paces(handicap_range_added)
end

def add_handicap_ranges(players)
    players.map do |player|
        # Duplicate passed in hash to avoid modifying original data
        player_with_range = player.dup
        
        # Explicity set min and max handicap to allow for easier reconfiguration
        min_handicap = [player[:handicap] - 5, 0].max
        max_handicap = [player[:handicap] + 5, 54].min #54 is maximum USGA handicap
        
        # Create new key in hash and assign it a hash with new K/V pair
        player_with_range[:metadata] = {handicap_range: (min_handicap..max_handicap)}

        player_with_range # Return modified hash to .map method
    end
end

def add_compatible_paces(players)
    players.map do |player|
        # Duplicate passed in hash to avoid modifying original data
        player_with_pace_compatibility = player.dup
        
        # Determine which pace of play
        case player[:preferences][:pace_of_play]
        when "relaxed"
            compatible_paces = ["relaxed", "medium"]
        when "medium"
            compatible_paces = ["relaxed", "medium", "fast"]
        when "fast"
            compatible_paces = ["medium", "fast"]
        end

        player_with_pace_compatibility[:metadata] = player_with_pace_compatibility[:metadata].merge({compatible_paces: compatible_paces})

        player_with_pace_compatibility
    end
end

def handicaps_overlap?(player1, player2)
    player1[:metadata][:handicap_range].overlap?(player2[:metadata][:handicap_range])
end

def pace_compatible?(player1, player2)
    player1[:metadata][:compatible_paces].include?(player2[:preferences][:pace_of_play]) && player2[:metadata][:compatible_paces].include?(player1[:preferences][:pace_of_play])
end

### Execution ###

find_compatible_groups(TEST_PLAYERS, 2)
# result = find_compatible_groups(TEST_PLAYERS, 2)
# Should RETURN an array of foursome hashes, or nil if impossible



