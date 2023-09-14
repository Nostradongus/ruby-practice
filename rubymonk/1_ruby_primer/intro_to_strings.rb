# In Ruby, Strings are key to communicating with a user

# String construction in Ruby has what is known as literal form
# The interpreter treats anything surrounded by single quotes (') or double quotes (") as a string
# The single quoted and double quoted approaches may have some differences in usage, but for most purposes they are equivalent
puts "Hello World!"

# Methods of the string
print ''.methods.sort, "\n"

# One of the common string methods is length
puts 'RubyMonk'.length

# String interpolation is also available in Ruby - use of placeholders within a string for values
# However, string interpolation is no supported in strings created with single quotes (')
a = 1
b = 4
puts "The number #{a} is less than #{b}"

# Placeholders aren't just variables, any valid block of ruby code inside the placeholder is valid
puts "It is #{a < b} that a is less than b"

# The essential difference between using single or double quotes in Ruby is that double quotes allow for escape sequences while single quotes do not
# e.g. "\n" will be interpreted as a new line while '\n' will be displayed as an actual escape sequence to the user

# Another common scenario is checking if a String contains any given character, word, or sub-string
puts "This is a string".include?("is a")

# Checking if the string starts with Ruby
puts "Ruby is a beautiful language".start_with? 'Ruby'

# Checking if the string ends with Ruby
puts "I can't work with any other language but Ruby".end_with? 'Ruby'

# Do notice that the previous three string methods all ended with a '?'. This is because it is a convention in Ruby to have '?' at the end of the method name if it returns only boolean values
# Though not mandated by the syntax, the practice is highly recommended as it increases code readability

# Getting the index of a character (sub-string) in a string
puts "I am a Rubyist".index 'R'

# Converting a string in lower case to upper case
puts 'i am in lowercase'.upcase # => 'I AM IN LOWERCASE'

# Converting a string in mixed case to lower case
puts 'This is Mixed CASE'.downcase # => 'this is mixed case'

# Swapping the case of every character in a string (weird but interesting method)
puts "ThiS iS A vErY ComPlEx SenTeNcE".swapcase # => "tHIs Is a VeRy cOMpLeX sENtEnCe"

# Advanced String Operations

# Splitting strings
# Regular Expressions (RegEx) can also be used as an argument in String#split
puts 'Fear is the path to the dark side'.split # by default, whitespace is used as a separator

# Concatenating strings
puts 'Ruby' + 'Monk'
puts "Ruby".concat("Monk") # the same but more expressive
puts 'Ruby' << 'Monk' # better way, appended to the 'Ruby' string object itself unlike the previous methods wherein a new string object is created (for memory utilization)

# Replacing a substring - only the first occurrence
puts "This is a test string".sub('a test', 'an edited')

# Replacing a substring - all occurrences
puts "I know that I went there".gsub('I', 'We')

# Replacing a substring - using RegEx
# In Ruby, a RegEx is specified by putting it between a pair of forward slashes (/)
puts 'RubyMonk'.gsub(/[aeiou]/, '1')
puts 'RubyMonk Is Pretty Brilliant'.gsub(/[A-Z]/, '0')

# Finding a substring - using RegEx
puts 'RubyMonk Is Pretty Brilliant'.match(/ ./) # returns the first match
puts 'RubyMonk Is Pretty Brilliant'.match(/ ./, 9) # specifies starting position (index)
