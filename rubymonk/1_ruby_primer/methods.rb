# Everything useful in a program happens through objects collaborating using methods.
# A method is simply programming jargon for "something one object can do for another".

# We ask the object that represents the integer 1 to give us the next integer in the sequence
# Do keep in mind that in the context of the program, "we" simply means the current object (main)
puts 1.next

# The data an object contains is "what it is" and its methods are "what it can do". Implicit in this definition is the fact that the abilities of an object are limited to the methods it exposes.

# Objectifying methods - in Ruby, methods aren't exempted from the "everything is an object" rule. This means that the methods of any object are objects themselves as well.

# The 'method' method can be used to get hold of any of its methods as an object
# Here, we ask the object that is the integer 1 to give us the instance of the method "next"
next_method_object = 1.method("next")
puts next_method_object

# The method object still maintains a relationship with the object to which it belongs so you can still call it using the 'call' method and it responds like a normal invocation of that method.
next_method_object = 1.method("next")
puts next_method_object.call

# Sample method that reverses the sign of an integer
def reverse_sign(an_integer)
    return 0 - an_integer
end
puts reverse_sign(100)
puts reverse_sign(-5)

# Note that the 'def' keyword is used to create a method.
# Ruby does not allow using spaces in method names, thus underscores (_) are used instead to replace them.
# It is also a convention that method names in Ruby must be in lower case.

# The return keyword specifies the object to be returned to the caller when the method has done its work. 
# In Ruby, if no return keyword is specified, the object created by the last line in the method is automatically treated as the return value. 
# A method must always return exactly one object.

# Even a method that does nothing at all and has no return produces an object - the nil (NilClass)
def do_nothing
end
puts do_nothing.class

# Method parameters can have default values too
def add(a_number, another_number, yet_another_number = 0)
    a_number + another_number + yet_another_number
end
puts add(1, 2)

# A list of parameters passed to an object can also be made as a list
# The splat/asterisk (*) is used to do this. The splat operator is used to handle methods which have a variable parameter list
# The 'inject' method is used to iterate over arguments
def add(*numbers)
    # 0 is the sum or the 'accumulator' and number is the each element of 'numbers'
    numbers.inject(0) { |sum, number| sum + number }
end
puts add(1)
puts add(1, 2)
puts add(1, 2, 3)
puts add(1, 2, 3, 4)

# The splat operator works both ways - you can use it to convert arrays to parameter lists as easily as we just converted a parameter list to an array.
def add(a_number, another_number, yet_another_number)
    a_number + another_number + yet_another_number
end
numbers_to_add = [1, 2, 3] # Without a splat, this is just one parameter
puts add(*numbers_to_add)  # Try removing the splat just to see what happens

# Parameter lists and splatting can also be mixed
# This is especially useful for cases wherein the number of related parameters are unknown
# It is recommended (easier) to place splatted parameters at the end of the parameter list, though not necessary
def add(*numbers)
    numbers.inject(0) { |sum, number| sum + number }
end
def add_with_message(message, *numbers)
    "#{message} : #{add(*numbers)}"
end
puts add_with_message("The Sum is", 1, 2, 3)

def introduction(age, gender, *names)
  "Meet #{names.join(' ')}, who's #{age} and #{gender}"
end
puts introduction(30, "Male", "Steven", "Deobald")

# Naming parameters 
# Ruby also allows the last parameter in the parameter list to skip using curly braces if it is a hash, making it a much prettier method invocation
# As a consequence, the first invocation in the example has two parameters, the second, three and the last, seemingly five. 
# In reality, the second and third invocations both have three parameters - two numbers and a hash.
def add(a_number, another_number, options = {})
    sum = a_number + another_number
    sum = sum.abs if options[:absolute]
    sum = sum.round(options[:precision]) if options[:round]
    sum
end
puts add(1.0134, -5.568)
puts add(1.0134, -5.568, absolute: true)
puts add(1.0134, -5.568, absolute: true, round: true, precision: 2)

# A not-so-gentle example
def add(*numbers)
    numbers.inject(0) { |sum, number| sum + number }  
end
def subtract(*numbers)
    current_result = numbers.shift # remove (pop) the first element
    numbers.inject(current_result) { |current_result, number| current_result - number }  
end
def calculate(*arguments)
    # if the last argument is a Hash, extract it 
    # otherwise create an empty Hash
    # The hash (if last argument) has to be removed from the array (splatted parameter list), else the add or subtract methods will not work
    # No neat way to do this apparently
    options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
    options[:add] = true if options.empty?

    return add(*arguments) if options[:add] 
    return subtract(*arguments) if options[:subtract]
end
puts calculate(4, 5, add: true)
puts calculate(-10, 2, 3, add: true)
puts calculate(4, 5, subtract: true)
puts calculate(0, 0, 0, -10, subtract: true)

# Another example of the inject method for clarity purposes
# This time, an empty hash ({}) is stored in the first block parameter 'hash', which is also called the accumulator
# While the second block parameter is the each element of the array being iterated
[1,"a",Object.new,:hi].inject({}) do |hash, item|
    hash[item.to_s] = item
    hash
end
