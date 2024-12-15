# Practice Problem Structure Decision

## Date: December 14, 2024

## Context
Need for better organization of practice problems, especially those requiring multiple files and detailed documentation.

## Decision
Implemented directory-based structure for practice problems:
```
YYYY-MM-DD-problem-name/
├── requirements.md
├── problem.md
├── attempt.rb
├── test_data.rb
└── notes.md
```

## Rationale
1. Better organization for multi-file problems
2. Standardized documentation
3. Clear separation of concerns
4. Better tracking of progress
5. Easier to maintain and review

## Consequences
### Positive
- More organized problem management
- Clearer documentation
- Better progress tracking
- Standardized approach

### Negative
- More files to manage
- More complex structure

## Implementation
- Created templates
- Updated README
- Modified workflows
- Created example with group matcher problem