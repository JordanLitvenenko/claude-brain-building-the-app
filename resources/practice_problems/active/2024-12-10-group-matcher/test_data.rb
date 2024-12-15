# Test Cases

# Basic Cases
BASIC_TEST_CASES = [
  {
    input: {
      golfers: [
        { name: "Alice", handicap: 10, prefers_to_walk: true, prefers_similar_skill: true },
        { name: "Bob", handicap: 12, prefers_to_walk: true, prefers_similar_skill: true },
        { name: "Charlie", handicap: 20, prefers_to_walk: false, prefers_similar_skill: false },
        { name: "David", handicap: 8, prefers_to_walk: true, prefers_similar_skill: true }
      ],
      minimum_groups: 1
    },
    expected: [["Alice", "Bob", "David"], ["Charlie"]]
  }
]

# Edge Cases
EDGE_TEST_CASES = [
  # Empty input
  {
    input: {
      golfers: [],
      minimum_groups: 1
    },
    expected: nil  # Should return nil or raise error
  },
  # Single golfer
  {
    input: {
      golfers: [{ name: "Alice", handicap: 10, prefers_to_walk: true, prefers_similar_skill: true }],
      minimum_groups: 1
    },
    expected: [["Alice"]]
  },
  # Impossible grouping
  {
    input: {
      golfers: [
        { name: "Alice", handicap: 10, prefers_to_walk: true, prefers_similar_skill: true },
        { name: "Bob", handicap: 25, prefers_to_walk: true, prefers_similar_skill: true }
      ],
      minimum_groups: 1
    },
    expected: nil  # Should return nil or raise error - can't satisfy similar skill preference
  }
]

# Performance Cases
PERFORMANCE_TEST_CASES = [
  # Large group, all compatible
  {
    input: {
      golfers: (1..20).map { |i|
        { name: "Player#{i}", handicap: 10, prefers_to_walk: true, prefers_similar_skill: false }
      },
      minimum_groups: 5
    },
    expected_group_count: 5  # Should create 5 groups of 4 players
  },
  # Large group, mixed preferences
  {
    input: {
      golfers: (1..16).map { |i|
        { 
          name: "Player#{i}",
          handicap: 10 + (i % 3) * 2,
          prefers_to_walk: i.even?,
          prefers_similar_skill: i % 3 == 0
        }
      },
      minimum_groups: 4
    },
    expected_group_count: 4  # Should create valid groups respecting preferences
  }
]