# Boolean Expressions in Ruby
puts "Bob" == 'Bob' # As long as the contents of the string is the same, the result is true
puts 60 >= 23 && ('Anna' == 'Bob' || 'Jill' == 'Jill')
puts 60 >= 23 and ('Anna' == 'Bob' or 'Jill' == 'Jill') # the same but more expressive
puts ! ("Bob" == "Jill") # negating expressions
puts "Bob" != "Jill" # the same but more convenient to use

# Ruby Conditional Branching: the 'if' statement
number = 0
if number > 0
    "#{number} is positive"
elsif number == 0
    "0"
else
    "#{number} is negative"
end

# Ruby also has the 'unless' statement which is used to check for a negative condition
# "unless x" is equivalent to "if !x"
age = 10
unless age >= 18
    puts "Sorry, you need to be at least eighteen to drive a car. Grow up fast!"
end

# The ternary operator - short-hand for an if-then-else construct
# In Ruby, '?' and ':' can be used to mean "then" and "else" respectively
number = 10
puts number > 0 ? "#{number} is positive" : "#{number} is negative"

# Truthiness of objects in Ruby - the conditional statements 'if' and 'unless' can also use expressions that return an object that is not boolean
# In such cases, the objects 'false' and 'nil' equates to false
# Every other object like 1, 0, and "" (empty string) are all evaluated to be true
if 0
    puts "Hey, 0 is considered to be a truth in Ruby unlike C"
end

# Loops in Ruby
# In Ruby, methods Array#each, Array#select, and etc. are the most frequently used loops since the primary use of loops is to iterate over of transform a collection

# Infinite loops - syntactically the simplest to write in Ruby
# UNCOMMENT to simulate
# loop do
#     puts "this line will be executed for an infinite amount of time"
# end

# Looping a block of code N times
n = 5
loop do
    puts n -= 1
    break unless n > 0
end

# Looping a block of code N times - another way
5.times do |x| # |x| is optional, used if needed to display the control variable
    puts x
end
