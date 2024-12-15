# Golf Group Matcher Requirements

## Problem Statement
Create a program that organizes golfers into groups based on their preferences and characteristics.

## Input
- Format: Array of hashes containing golfer information
- Each golfer has:
  - name: String
  - handicap: Integer
  - prefers_to_walk: Boolean
  - prefers_similar_skill: Boolean
- Minimum number of groups required (integer)

## Output
- Format: Array of arrays, where each inner array represents a group of golfers
- Each group must satisfy all compatibility rules

## Constraints
1. Groups must be 2-4 players
2. If a golfer prefers similar skill level:
   - Can only be grouped with players within 5 handicap strokes
3. If a golfer prefers to walk:
   - Must be paired with other walkers
4. Must create at least the minimum number of groups specified
5. Must use all golfers
6. Groups should be optimally sized (prefer 4-person groups when possible)

## Validation Criteria
1. All groups must be valid size (2-4 players)
2. All similar skill preferences must be satisfied
3. All walking preferences must be satisfied
4. Minimum group count must be met
5. All golfers must be assigned to exactly one group
6. Solution should handle invalid inputs gracefully

## Example
Input:
```ruby
golfers = [
  { name: "Alice", handicap: 10, prefers_to_walk: true, prefers_similar_skill: true },
  { name: "Bob", handicap: 12, prefers_to_walk: true, prefers_similar_skill: true },
  { name: "Charlie", handicap: 20, prefers_to_walk: false, prefers_similar_skill: false },
  { name: "David", handicap: 8, prefers_to_walk: true, prefers_similar_skill: true }
]
minimum_groups = 1
```

Expected Output:
```ruby
[
  ["Alice", "Bob", "David"],  # All walkers, similar handicaps
  ["Charlie"]                 # Non-walker in separate group
]
```