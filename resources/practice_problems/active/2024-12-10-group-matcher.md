# Golf Group Matching Problem
**Date Assigned**: December 10, 2024
**Status**: Active
**Difficulty**: Integration (30-60 minutes)
**Topics Covered**: Data Structures, Validation, Algorithm Design

## Problem Description
Create a method that matches golfers into compatible foursomes based on various preferences and requirements.

```ruby
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
```

## Test Data
```ruby
test_players = [
  {
    name: "John",
    handicap: 15,
    preferences: {
      walking_only: true,
      pace_of_play: "medium",
      preferred_tee_time: "early",
      skill_level_preference: "similar"
    }
  },
  {
    name: "Mike",
    handicap: 14,
    preferences: {
      walking_only: true,
      pace_of_play: "medium",
      preferred_tee_time: "early",
      skill_level_preference: "similar"
    }
  },
  {
    name: "Sarah",
    handicap: 17,
    preferences: {
      walking_only: true,
      pace_of_play: "relaxed",
      preferred_tee_time: "late",
      skill_level_preference: "similar"
    }
  },
  {
    name: "Dave",
    handicap: 8,
    preferences: {
      walking_only: false,
      pace_of_play: "fast",
      preferred_tee_time: "early",
      skill_level_preference: "any"
    }
  },
  {
    name: "James",
    handicap: 10,
    preferences: {
      walking_only: false,
      pace_of_play: "fast",
      preferred_tee_time: "early",
      skill_level_preference: "similar"
    }
  },
  {
    name: "Emma",
    handicap: 20,
    preferences: {
      walking_only: true,
      pace_of_play: "relaxed",
      preferred_tee_time: "late",
      skill_level_preference: "any"
    }
  },
  {
    name: "Tom",
    handicap: 11,
    preferences: {
      walking_only: false,
      pace_of_play: "medium",
      preferred_tee_time: "mid",
      skill_level_preference: "similar"
    }
  },
  {
    name: "Lisa",
    handicap: 16,
    preferences: {
      walking_only: true,
      pace_of_play: "medium",
      preferred_tee_time: "early",
      skill_level_preference: "any"
    }
  },
  {
    name: "Bob",
    handicap: 25,
    preferences: {
      walking_only: false,
      pace_of_play: "relaxed",
      preferred_tee_time: "mid",
      skill_level_preference: "any"
    }
  },
  {
    name: "Alice",
    handicap: 13,
    preferences: {
      walking_only: false,
      pace_of_play: "fast",
      preferred_tee_time: "early",
      skill_level_preference: "similar"
    }
  }
]

# Test cases:
puts "Testing with minimum_groups = 1:"
result1 = find_compatible_groups(test_players, 1)
puts result1.nil? ? "No groups possible" : "Groups found: #{result1}"

puts "\nTesting with minimum_groups = 2:"
result2 = find_compatible_groups(test_players, 2)
puts result2.nil? ? "No groups possible" : "Groups found: #{result2}"
```

## Expected Output Format
Each group in the returned array should be a hash containing:
- `players`: array of player names
- `average_handicap`: rounded to 1 decimal
- `suggested_tee_time`: most common preferred time in group
- `walking_only`: true if any player in group requires walking

## Progress Notes
- Started with data validation implementation
- Currently working on group matching algorithm

## Learning Objectives
- Complex data structure manipulation
- Multi-condition matching algorithms
- Professional validation patterns
- Error handling
- Code organization