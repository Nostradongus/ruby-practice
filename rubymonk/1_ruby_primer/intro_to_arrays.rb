# Initializing an empty array
arr = []
arr = Array.new # another way to do it

# Initializing an array with values
# Arrays in Ruby allow you to store any kind of objects in any combination with no restrictions on type
arr = [1, 2, 3, 4, 5]
arr_2 = [1, 'one', 2, 'two'] # this is valid

# Looking up data in Arrays
puts [1, 2, 3, 4, 5][2] # displays 3
puts [1, 2, 3, 4, 5][-5] # reverse index lookup is also available, displays 1

# Appending elements to an array
# In Ruby, the size of an array is not fixed
# Unlike many other languages, you will always find multiple ways to perform the same action in Ruby
print [1, 2, 3, 4, 5] << "woot", "\n" # '<<' is also a special method for appending new elements to an array; most common method to add an element to an Array
print [1, 2, 3, 4, 5].push("woot"), "\n"
print [1, 2, 3, 4, 5].append("woot"), "\n"

# Basic Array Operations

# Transforming arrays
print [1, 2, 3, 4, 5].map { |i| i + 1 }, "\n" 
print [1, 2, 3, 4, 5].collect { |i| i + 1 }, "\n" # the same; Array#map aliases Array#collect, they can be used interchangeably

# Filtering elements of an Array
# The method Array#select is a standard Ruby idiom for filtering elements
print [1, 2, 3, 4, 5, 6].select { |number| number % 2 == 0 }, "\n" # selects only even numbers
print ['rock', 'paper', 'scissors', 'lizard', 'spock'].select { |word| word.length > 5 }, "\n" # selects only words with length greater than 5

# Deleting elements
print [1, 3, 5, 4, 6, 7].delete(5), "\n" # returns the deleted element
[1,2,3,4,5,6,7,8,9].delete_if { |i| i % 2 == 0 } # returns all deleted even numbers

# One of the reasons Ruby is so popular with developers is the intuitiveness of the API - most of the time you can guess the method name which will perform the task you have in your mind.
# Doing this in languages like C or Java would take you a lot of boiler plate code. The beauty of Ruby is in its concise but readable code.

# Method names in Ruby use "snake_casing" - methods with multiple words are separated by underscores (_).

# Using for loops
# Interestingly, nobody uses it much in Ruby
source = [1, 2, 3, 4, 5]
destination = []
for number in source
    # Add number to destination if number is less than 4
    destination << number if number < 4
end
print destination, "\n"

# Looping with Array#each
# Iteration is one of the most commonly cited examples of the usage of blocks in Ruby
# The Array#each method accepts a block to which each element of the array is passed in turn
source = [1, 2, 3, 4, 5]
destination = []
source.each do |number|
    destination << number if number < 4
end
print destination, "\n"

# for loops are hardly ever used in Ruby, and Array#each and its siblings are the de-facto standard as having relative merits.
