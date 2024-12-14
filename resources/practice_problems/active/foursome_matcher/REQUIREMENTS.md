# Golf Group Matching Algorithm

## Priorities
1. If `walking_only` is `true` players should only be grouped with other `walking_only == true` players
  - for this reason maybe it is reasonable to immediatey split the data based on this criteria?

2. All players in a group should have a compatible `pace_of_play`
  - `fast` only matches with `fast` or `medium`
  - `relaxed` only matches with `relaxed` or `medium`
  - `medium` matches with any pace

3. If a player prefers `similar` `skill_level_peference` they should be grouped with players within 5 handicaps strokes
  - for this reason I think these players can also be split off in the data
  - Ahh, this is going to be tricky though, you can't just isolate them in the data because they'd be fine being paired with `any` `skill_level_preference` players as long as the handicaps are within `5`

4. `preferred_tee_time` should match with possible, but this is lowest priority

## Return Format

```ruby
RETURN = [
  {
    players: ["Player1", "Player2", "Player3", "Player4"]
    average_handicap: 3.4
    suggested_tee_time: early
    walking_only: true
  },
  {
    players: ["Player1", "Player2", "Player3", "Player4"]
    average_handicap: 6.5
    suggested_tee_time: mid
    walking_only: false
  }
]
```
## Steps
1. Validate input data
  - `players` array should:
    - have at least 4 players
    - Be an array of hashes
    - Each hash should have 3 keys with specific data types as values (`name: string`, `handicap: integer`, `preferences: hash`)
    - The `:preferences` hash should have 4 keys with specific data types as values (`walking_only: boolean`, `pace_of_play: string`, `preferred_tee_time: string`, `skill_level_preference: string`)
  - The `minimum_groups` argument should be an `integer` greater than `0`.

2. Split data into `walking_only == true` and `walking_only == false`.
3. The players who prefer `similar` skill levels can draw from the remaining pool of players assuming they have compatible `pace_of_play` preferences.
  - for this maybe it makes sense to sort players by handicap and start by matching the best player with the second best player with the 3rd best... `while` they're within 5 strokes of each other. If you can't build a foursome from this pool then the main function would return nil
4. If you can build a foursome you could then optimize for `preferred_tee_time`?

## Helper Methods
1. `validate_input_data(players)` can be called inside the `find_compatable_groups` method to keep things neat.
2. `split_by_walking_preference` called inside main method to split entire players array by walking preference
3. 
