# Using modules
# A module is a container where we can store groups of methods.
# To give related methods a namescape.

## Using the Tools module from tools.rb

### Tells Ruby that we will be using the contents of the tools.rb file
### 'require' is similar to 'import' of Python and Java
require_relative "tools.rb"
include Tools

Tools.say_hi("Mike")

## NOTE:
## Use 'require' for installed gems; uses $LOAD_PATH to find the files.
## Use 'require_relative' for local files.
##
## require "./tools.rb" == require_relative "tools.rb", however it is
## better practice to use require_relative instead for convenience
