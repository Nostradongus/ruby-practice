# Using conditional statements

## Using booleans only
is_male = true
is_tall = false

if is_male and is_tall
    puts "You are a tall male."
# negation symbol    
elsif is_male and !is_tall
    puts "You are a male."
# can also use the "not" keyword
elsif not is_male and is_tall
    puts "You are a tall female."
else
    puts "You are a female."
end


## Using relational operators
def max(num1, num2, num3)
    if num1 >= num2 and num1 >= num3
        # return num1
        num1
    elsif num2 >= num1 and num2 >= num3
        # return num2
        num2
    else
        # return num3
        num3
    end
end

puts max(1, 7, 2)
