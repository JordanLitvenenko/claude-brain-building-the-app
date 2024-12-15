# Access Control Configuration

## Allowed Operations
1. Read: Always permitted for accessible directories
2. Write: 
   - New files: Requires format check
   - Existing files: Requires human approval
3. Create Directory: Requires human approval
4. List Directory: Always permitted

## Restricted Operations
1. Never modify existing files directly
2. Never delete files or directories
3. Never modify system files
4. Never bypass access checks

## Directory Access
1. Must check allowed_directories first
2. Must stay within permitted paths
3. Must verify access before operations
4. Must report access violations