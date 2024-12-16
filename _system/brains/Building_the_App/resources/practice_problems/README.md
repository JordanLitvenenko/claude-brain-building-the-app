# Practice Problems

## Organization
- active/: Current practice problems
- solved/: Completed problems with solutions

## Problem Structure
Each problem directory follows the format:
```
YYYY-MM-DD-problem-name/
├── README.md           # Problem description
├── test_data.rb       # Test cases
├── attempt.rb         # Working solution
└── notes.md          # Learning notes
```

## After Completion
When a problem is solved:
1. Solution is verified
2. Directory moved to solved/
3. attempt.rb renamed to solution.rb
4. notes.md updated with learnings

## File Templates

### README.md
```markdown
# [Problem Name]
Date: [YYYY-MM-DD]

## Objective
[Clear statement of problem goal]

## Context
[Background and relevance]

## Requirements
- [Requirement 1]
- [Requirement 2]

## Test Cases
[Example inputs/outputs]

## Implementation Notes
[Important considerations]

## Learning Goals
- [Goal 1]
- [Goal 2]
```

### notes.md
```markdown
# Learning Notes

## Understanding
- Key concepts
- Challenges
- Insights

## Progress
- Attempts
- Improvements
- Solutions

## Learnings
- Technical skills
- Best practices
- Patterns
```