# Math & Numbers

num = 20



## arithmetic operations
puts 5 + 9
puts 5 - 9
puts 5 * 9
puts 5 / 9
puts 10 % 3
puts 2 ** 3     # same as Python; exponential operator
puts num % 3



## printing a string with a number (using to_s)
puts "My favorite number is " + num.to_s    # to string



## built-in number methods / functions

### abs (absolute value)
puts -40.abs()      # numbers are objects in ruby

### round (round off)
puts 20.687.round()

### ceil (ceiling)
puts 20.9.ceil()

### floor
puts 20.1.floor()



## Math module methods / functions

### Math.sqrt() (square root)
puts Math.sqrt(36)
puts Math.sqrt 36   # this also works; without parentheses

### Math.log() (logarithm)
puts Math.log(36)
puts Math.log 36


## using integers and floats

### float is dominant
puts 1.0 + 7

### unlike Python, two integers always results in an integer for division
puts 10 / 7
