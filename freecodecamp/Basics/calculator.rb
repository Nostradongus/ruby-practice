# Building a calculator

## integers
print "Enter an integer: "
num1 = gets.chomp()
print "Enter another integer: "
num2 = gets.chomp()

### since gets returns a string by default, use to_i
### to convert string to integer
puts num1.to_i + num2.to_i
print "\n"


## floats
print "Enter a float: "
num1 = gets.chomp().to_f
print "Enter another float: "
num2 = gets.chomp().to_f
puts num1 + num2