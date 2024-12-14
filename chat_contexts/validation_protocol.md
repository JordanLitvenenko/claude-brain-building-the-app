# Context Validation Protocol

## Context Load Sequence
1. Receive resume command with context ID
2. Verify context directory exists
3. Confirm all required files present:
   - state.md
   - variables.md
   - decision_path.md
   - continuation.md
4. Load and parse each file in sequence
5. Explicitly acknowledge loaded context with summary
6. Continue from last recorded state

## Required Acknowledgment Format
```
Context [ID] loaded successfully:
Current Topic: [from state.md]
Last State: [key points from state.md]
Next Steps: [from continuation.md]

Resuming from: [last recorded point]
Would you like to continue with [next step from continuation.md]?
```

## Validation Checks
- All required files present
- Files contain valid content
- No conflicting state information
- Continuation plan exists
- Decision path is traceable

## Error Handling
1. Missing Files:
   - Report specific missing files
   - Offer to recreate from templates
2. Invalid Content:
   - Identify problematic sections
   - Maintain valid portions
3. Conflicting State:
   - Highlight conflicts
   - Request user clarification

## Implementation Requirements
1. Must explicitly confirm context found
2. Must quote specific details from context files
3. Must maintain context throughout session
4. Must reference decision history when relevant