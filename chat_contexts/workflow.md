# Chat Context Management Workflow

## Context ID Format
`[Topic]-[YYYYMMDD]-[Sequential Number]`
Example: `ruby-blocks-20241214-001`

## Commands
- "Save context as [ID]": Creates new context or updates existing one
- "Resume context [ID]": Loads specified context with validation
- "Archive context [ID]": Moves context to archived status
- "List active contexts": Shows all active context IDs

## Context Creation Process
1. Generate ID following format: topic-YYYYMMDD-NNN
2. Create new directory in active/[ID]/
3. Copy and populate all template files
4. Update state.md with current discussion details

## Context Resume Process
1. VALIDATE: Confirm context directory and all files exist
2. LOAD: Read all context files sequentially
3. ACKNOWLEDGE: Provide explicit context summary
4. CONFIRM: Quote specific details from context
5. RESUME: Continue from last recorded state
6. MAINTAIN: Keep context active throughout session

## Context Archive Process
1. Create summary.md and learnings.md
2. Move context directory to archived/
3. Clean up any temporary files
4. Update related context references

## Best Practices
- Keep state.md updated with significant changes
- Document all key decisions in decision_path.md
- Maintain clear continuation plans
- Cross-reference related contexts
- Regular cleanup of old contexts
- Use descriptive topic names in IDs
- Ensure sequential numbers don't duplicate

## Error Prevention
- Always verify ID exists before resuming
- Check for ID conflicts before creating new context
- Confirm archive operations before executing
- Maintain backup of active contexts
- Validate all required files present
- Verify file contents during load

## Required Acknowledgment Format
When resuming a context, must respond with:
```
Context [ID] loaded successfully:
Current Topic: [from state.md]
Last State: [key points from state.md]
Next Steps: [from continuation.md]

Resuming from: [last recorded point]
Would you like to continue with [next step from continuation.md]?
```