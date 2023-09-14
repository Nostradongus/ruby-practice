# In Ruby, everyting is an object - integers, characters, texts, arrays - everything

# The "main" object is what Ruby provides by default if no specific object was specified
self.print self, "\n"

# self is optional, the main object of the whole program itself is "self"
puts "Ruby Monk" 

# An object calls (invokes) a method to interact with another object
# Invoking a method on an object inevitably generates a response. This response is always another object
print 2.even?, "\n"

# Method invocations may also be chained
print 1.next.next, "\n"

# Methods of an object may also be looked up or listed
print 1.methods, "\n"
print 1.methods.sort, "\n" # may also be sorted alphabetically (array)

# Invoking methods with arguments (parameters) to give it additional info
print ['rock', 'paper', 'scissors'].index('paper'), "\n"
print (2.between?(1,3)), "\n" # parenthesis is optional; 2.between? 1,3

# Since everything is an object, mathematical operators are also integer methods in Ruby
print 4.+(3), "\n"
print 4.-(3), "\n"
print 4.*(3), "\n"
print 4./(3), "\n"

# However, Ruby makes an exception in its syntactic rules for commonly used operators so periods (.) do not have to be used for these operators on objects
# This applies to the other integer methods (mathematical operators): [ +, -, *, /, =, ==, !=, >, <, >=, <=, [] ]
# They are also called "special methods"
print 1+2, "\n" # this is the same as 1.+(2)

# The last special method ([]) is a method of an array and is commonly used for accessing / indexing elements
words = ["foo", "bar", "baz"]
print words.[](1), "\n"
print words[1], "\n" # the same but more convenient to use and is similar to other programming languages

# This is a common pattern in Ruby - two different ways to do the same thing where one remains consistent and the other changes the syntax to be more programmer-friendly

# Ruby is a programmer-friendly thus the different ways to do things as an object-oriented programming language
