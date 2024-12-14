# Building_the_App Brain

## Purpose
This knowledge base serves as a specialized "brain" for the AI assistant (Claude), optimized for guiding a structured learning journey from Ruby fundamentals through to building a complete web application. The organization and content are specifically designed to help the AI maintain context, provide consistent assistance, and track progress effectively.

## Brain Structure & Function

### _context/
Essential information that shapes all AI interactions and guidance:
- `goals/`: Learning objectives, project requirements, success criteria
- `preferences/`: Learning style, communication patterns, teaching guidelines
- `constraints/`: Time and learning constraints that inform pacing and approach

The AI checks these files to:
- Maintain consistent teaching approach
- Provide appropriately paced guidance
- Ensure recommendations align with goals
- Respect learning preferences and constraints

### progress/
Tracking mechanisms for the learning journey:
- `journal/`: Daily logs and key insights
- `assessments/`: Detailed mastery tracking by language/technology
- `roadmap.md`: Development and learning pathway

The AI uses these to:
- Track current progress and mastery levels
- Maintain continuity between sessions
- Guide next steps and recommendations
- Ensure appropriate skill progression

### resources/
Reference materials and learning tools:
- `code_samples/`: Example implementations
- `practice_problems/`: 
  - `active/`: Current problems (dated directories: YYYY-MM-DD-problem-name/)
  - `solved/`: Completed problems with verified solutions
  - `_templates/`: Templates for standard problem files
- `code_patterns/`: Professional development patterns

The AI references these to:
- Provide consistent examples
- Design appropriate practice exercises
- Recommend professional patterns

### project/
Golf Trip Planner specific content:
- `planning/`: Project requirements and design evolution
- `implementation/`: Development progress and documentation

The AI uses this to:
- Connect learning to practical application
- Guide project development
- Maintain focus on end goals

### feedback/
Tracking what teaching approaches work best:
- Successful explanation patterns
- Effective analogies
- Learning breakthroughs
- Teaching strategies

### challenges/
Documentation of difficulties and solutions:
- Common stumbling points
- Successful resolution approaches
- Learning patterns
- Growth opportunities

### connections/
Mapping relationships between concepts:
- Cross-concept linkages
- Project implementation ties
- Learning progression paths
- Knowledge integration points

### decisions/
Tracking architectural and technical choices:
- Design decisions
- Structure evolution
- Implementation approaches
- Learning path choices

### sessions/
Session management and workflows:
- `templates/`: Session start/end templates
- `workflows/`: Checklists and procedures
- Documentation standards
- Progress tracking

## Usage Guidelines

### For Daily Sessions
1. Start by checking:
   - Latest `progress/journal/daily_logs/` entries for context
   - Current `progress/assessments/` for mastery levels
   - Any active practice problems
   - Current roadmap position

2. During session:
   - Keep time constraints in mind (4-6 hour sessions)
   - Monitor for rushing/anxiety signals
   - Maintain balance between theory and practice
   - Connect concepts to project context

3. End of session:
   - Document progress in daily logs
   - Update any mastery changes
   - Move solved problems to solved directory
   - Note any key insights gained

### For Practice Problems
1. New problems:
   - Created in `active/` with dated directory structure (YYYY-MM-DD-problem-name/)
   - Each problem directory contains:
     - `requirements.md`: Primary problem specification and description
     - `problem.md`: Context and learning objectives
     - `attempt.rb`: Current working solution
     - `test_data.rb`: Test cases and data
     - `notes.md`: Progress tracking and insights
   - Templates available in `_templates/`
   - Aligned with current mastery level
   - Connected to project when possible

2. Problem workflow:
   - AI creates complete directory with all files
   - Requirements presented as primary description
   - Progress tracked in notes.md
   - Tests maintained in test_data.rb
   - Solutions developed in attempt.rb

3. Upon completion:
   - Verify solution
   - Move directory to `solved/`
   - Rename attempt.rb to solution.rb
   - Convert notes.md to learnings.md
   - Add completion date and status

### For Project Development
1. Follow roadmap progression
2. Ensure foundational understanding before implementation
3. Focus on code quality and maintainability
4. Document evolution and decisions

## Session Management

### Starting Sessions
Initiate with: "Claude, let's begin today's Building_the_App session"

The AI will:
1. Review recent history
2. Assess current status
3. Prepare session structure
4. Confirm objectives

Location: `sessions/workflows/startup_checklist.md`

### Ending Sessions
Conclude with: "Claude, let's wrap up today's Building_the_App session"

The AI will:
1. Document progress
2. Update status
3. Prepare for next session
4. Ensure all documentation is complete

Location: `sessions/workflows/shutdown_checklist.md`

### Session Documentation
Templates located in `sessions/templates/`:
- `session_start.md`: Initial session structure
- `session_end.md`: Session wrap-up format

## Current Status
Progress: Ruby fundamentals
Focus: Block variable scope and yield mechanics
Next: Lambda behavior and syntax
Project Phase: Planning and learning

## Success Indicators
- Clear understanding demonstrated
- Ability to explain concepts
- Successful problem completion
- Quality code production
- Steady project progress

## Maintenance
The AI is responsible for:
- After-session documentation
- Progress tracking
- Knowledge organization
- Context preservation
- Connection mapping

The brain is updated:
- After each learning session (progress/journal)
- When completing practice problems
- Upon reaching mastery milestones
- When project requirements evolve

## Key Principles
1. Understanding over memorization
2. Quality over speed
3. Mastery before advancement
4. Professional practices from start
5. Business context integration

This brain is designed to grow and evolve alongside the learning journey, maintaining a clear record of progress while ensuring consistent, effective guidance aligned with established goals and preferences.