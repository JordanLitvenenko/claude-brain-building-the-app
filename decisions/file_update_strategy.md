# File Update Strategy Decision

## Date: December 14, 2024

## Context
Discovered that having the AI handle updates to large files directly was causing issues with context clipping and inconsistent updates.

## Decision
Modified the update process:
1. AI analyzes and presents needed changes
2. AI provides specific, copyable content
3. Learner handles all updates to existing files
4. AI only directly creates new, small files

## Rationale
1. Prevents context clipping issues
2. Ensures file integrity
3. Maintains better version control
4. Reduces risk of partial updates

## Implementation
- Updated shutdown_checklist.md with new process
- Modified communication guidelines
- Established clear AI/learner responsibilities
- Created standard format for presenting changes:
    - Find: [exact content to replace]
    - Replace with: [new content]
    - Location: [file path and/or location details]

## Impact
- More reliable file updates
- Clearer communication
- Better maintenance of brain integrity
- Improved version control