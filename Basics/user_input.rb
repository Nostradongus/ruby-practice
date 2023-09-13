# Getting user input

print "Enter Your Name: "
name = gets

## apparently, ruby also includes the newline in the input
puts "Hello " + name + ", you are cool!\n\n"

## to solve that, use chomp() of gets
print "Enter Your Name Again: "
name = gets.chomp
print "Now Enter Your Age: "
age = gets.chomp
puts "Hello " + name + ", you are " + age
