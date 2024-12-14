# Desktop Configuration

## Current Configuration
```json
{
  "mcpServers": {
    "brave-search": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-brave-search"
      ],
      "env": {
        "BRAVE_API_KEY": "<BRAVE_API_KEY>"
      }
    },
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "/Users/jordanlitvenenko/Claude", 
        "/Users/jordanlitvenenko/Jordans_Vault" 
      ]
    },
    "git": {
      "command": "uvx",
      "args": ["mcp-server-git", "--repository", "/Users/jordanlitvenenko/Jordans_Vault"]
    },
    "github": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-github"
      ],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "<GITHUB_PAT>"
      }
    }
  }
}
```

## MCP Servers Overview

### Brave Search
- **Purpose**: Enables web search capabilities
- **Package**: @modelcontextprotocol/server-brave-search
- **Capabilities**: 
  - General web searches
  - News searches
  - Local searches
- **Note**: Requires valid Brave API key (configured locally)

### Filesystem
- **Purpose**: Provides access to local file system
- **Package**: @modelcontextprotocol/server-filesystem
- **Access Paths**:
  - /Users/jordanlitvenenko/Claude
  - /Users/jordanlitvenenko/Jordans_Vault
- **Capabilities**:
  - Read files
  - Write files
  - Create directories
  - List directory contents
  - Search files
  - Get file info
  - Move files

### Git (Currently Not Active)
- **Purpose**: Would provide Git operations capability
- **Status**: Implementation in development
- **Note**: Currently using GitHub API for remote operations and manual local Git commands

### GitHub
- **Purpose**: Enables GitHub repository management
- **Package**: @modelcontextprotocol/server-github
- **Capabilities**:
  - Create/update repositories
  - Manage files in repositories
  - Create issues
  - Create pull requests
  - Search repositories
  - Fork repositories
  - Create branches
- **Note**: Requires valid GitHub Personal Access Token (configured locally)

## Security Notes
- Token Management: Tokens are stored locally and not in this repository
- Access Control: Filesystem access is limited to specified directories
- Authentication: GitHub operations require valid PAT with appropriate scopes

## Usage Guidelines
1. Always verify paths when using filesystem operations
2. Use appropriate error handling for each MCP operation
3. Consider rate limits for API-based services (Brave Search, GitHub)
4. Maintain security by keeping tokens and credentials updated

## Future Considerations
1. Implementing local Git operations when MCP server is stable
2. Potentially adding more filesystem paths as needed
3. Regular security audits and token rotation
4. Monitoring for new MCP capabilities