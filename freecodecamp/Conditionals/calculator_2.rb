# Building a better calculator

## get user inputs
print "Enter first number: "
num1 = gets.chomp().to_f()
print "Enter operator: "
op = gets.chomp()
print "Enter second number: "
num2 = gets.chomp().to_f()

## execute operation
if op == '+'
    puts num1 + num2
elsif op == '-'
    puts num1 - num2
elsif op == '*'
    puts num1 * num2
elsif op == '/'
    puts num1 / num2
elsif op == '%'
    puts num1 % num2
elsif op == '**'
    puts num1 ** num2
else
    puts "Invalid operator!"
end
