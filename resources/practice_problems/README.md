# Practice Problems Structure and Workflow

## Directory Structure
Each practice problem has its own directory with standardized files:

```
YYYY-MM-DD-problem-name/
├── problem.md           # Problem description and context
├── requirements.md      # Specific requirements and constraints
├── attempt.rb           # Current working solution
├── test_data.rb        # Test data sets
└── notes.md            # Learning notes, attempts, insights
```

## File Purposes

### problem.md
- General context and background
- Learning objectives
- Related concepts
- Connection to project goals

### requirements.md
- Specific problem description
- Input/output specifications
- Constraints and edge cases
- Validation criteria
- Success conditions

### attempt.rb
- Current working solution
- Comments explaining approach
- Status of implementation

### test_data.rb
- Sample input data
- Expected outputs
- Edge cases
- Test scenarios

### notes.md
- Attempts and approaches tried
- Challenges encountered
- Learning insights
- Questions and clarifications
- Progress tracking

## Workflow for New Problems
1. Create problem directory with date prefix
2. Initialize all five standard files
3. Present requirements.md as the primary problem description
4. Use other files to organize supporting information

## Active vs Solved Problems
- Active problems remain in `active/` directory
- Upon completion and verification, moved to `solved/` directory
- Solution.rb replaces attempt.rb in solved problems
- Learnings.md replaces notes.md with final insights

## Problem Documentation Standards
- All code must include comments explaining approach
- Test data should cover edge cases
- Notes should track learning progress
- Requirements should be clear and testable