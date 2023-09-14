# Looking up the class of an object
# Using the class method
puts 1.class
puts "".class
puts [].class

# Checking whether an object is a particular class
puts 1.is_a?(Integer)
puts 1.is_a?(String)

# "Everything is an object" in Ruby
# Classes themselves are simply objects that belongs to the class 'Class'
puts 1.class.class

# In Ruby, like other class-based object oriented languages that you may already be familiar with, classes act as the factories that build objects. 
# An object built by a certain class is called 'an instance of that class.'

# Creating the most basic kind of object by calling new
puts Object.new

# Building own class
# Of course, a class needs a job or a role that its instances fulfill, or we have no reason to create one
class Rectangle
    # initialize is the default name for a class constructor method
    def initialize(length, breadth)
        # The '@' symbol is used to refer to the instance variables of a class
        # This means that every instance of the class Rectangle will has its own unique copies of the variables and is in effect, a distinct rectangle
        @length = length
        @breadth = breadth
    end

    def perimeter
        2 * (@length + @breadth) # the 'return' keyword is optional
    end

    def area
        @length * @breadth
    end
end

# It is a convention that classes in Ruby have names beginning with a capital letter

# For a class to justify its existence, it needs to have two distinct features:
# 1. State
# A class must have some kind of state that defines the attributes of its instances. In the case of a simple rectangle, this could simply be its length and breadth.
# 
# 2. Behaviour
# A class must also do something meaningful. This is achieved by the programmer adding methods to the class that interact with its state to give us meaningful results.
