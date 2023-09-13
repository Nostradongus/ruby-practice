# Using methods / functions

## creating the first method
def say_hi
    puts "Hello User"
end

### execute the first method
say_hi

## creating a second method with parameters
## like in Python, can also include default values
def introduce(name="no name", age=-1) 
    puts "Hi #{name}, you are #{age} years old."
end

### execute the second method
introduce("Joshue", 23)
introduce "Joshue", 23  # parentheses are optional as well
introduce("Joshue")
introduce
print "\n"

## creating the third method with a return statement
## even in param declaration, parentheses are optional
def cube num=2
    # return num * num * num
    num * num * num     # return keyword is optional
end

### execute the third method
puts cube
puts cube 3
print "\n"

## creating the fourth method that returns multiple elements
## basically, it returns an array
def ret_arr
    return "John", "Kawasaki", 1, 2.0
end

### execute the fourth method
puts ret_arr
