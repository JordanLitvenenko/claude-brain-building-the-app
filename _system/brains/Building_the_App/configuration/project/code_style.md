# Code Style Configuration

## Ruby Style Guidelines

### Naming Conventions
```ruby
# Classes and Modules
class MyClass           # CamelCase
module MyModule        # CamelCase

# Methods and Variables
def my_method          # snake_case
local_variable         # snake_case
@instance_variable     # snake_case with @
@@class_variable      # snake_case with @@
CONSTANT_VALUE        # SCREAMING_SNAKE_CASE
```

### Code Layout
```ruby
# Method Definition
def method_name(param1, param2)
  # 2 space indentation
  do_something
end

# Block Style
[1, 2, 3].each do |num|
  puts num
end

# One-line Blocks
[1, 2, 3].map { |num| num * 2 }
```

### Best Practices
1. Method Length
   - Keep methods focused and small
   - Single responsibility
   - Extract complex logic
   - Clear purpose

2. Class Organization
   - Logical grouping
   - Related methods together
   - Clear hierarchy
   - Proper encapsulation

3. Code Comments
   ```ruby
   # Method documentation
   # @param [Type] name description
   # @return [Type] description
   def method_name(param)
     # Implementation comments when needed
   end
   ```

## Rails Style Guidelines

### Directory Structure
```
app/
├── controllers/
│   └── namespaced/
├── models/
│   └── concerns/
├── views/
│   └── layouts/
└── services/
```

### Controller Organization
```ruby
class UsersController < ApplicationController
  # RESTful actions in order:
  # index, show, new, create, edit, update, destroy
  
  private
  
  # Strong parameters and helper methods
end
```

### Model Structure
```ruby
class User < ApplicationRecord
  # Extensions
  # Associations
  # Validations
  # Scopes
  # Class methods
  # Instance methods
  # Private methods
end
```

## JavaScript Style Guidelines

### Code Organization
```javascript
// Import statements
import { Component } from 'library';

// Constants
const MAX_COUNT = 100;

// Function definitions
function doSomething() {
  // Implementation
}

// Export statements
export { doSomething };
```

### Naming Conventions
```javascript
// Variables and functions
const userName = 'value';     // camelCase
function getData() {}         // camelCase

// Classes and components
class UserProfile {}         // PascalCase
function CartComponent() {}  // PascalCase

// Constants
const MAX_ITEMS = 10;       // SCREAMING_SNAKE_CASE
```

## Quality Requirements

1. Code Structure
   - Consistent formatting
   - Clear organization
   - Logical grouping
   - Proper naming

2. Documentation
   - Clear comments
   - Method documentation
   - Architecture decisions
   - Usage examples

3. Testing
   - Comprehensive coverage
   - Clear test names
   - Organized test files
   - Proper assertions

4. Error Handling
   - Proper validation
   - Clear error messages
   - Recovery strategies
   - Logging practices