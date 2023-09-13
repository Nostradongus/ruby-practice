# Error (exception) handling

begin
    num = 10
    arr = [4, 8, 15, 16, 23, 42]

    # will yield a ZeroDivisionError
    # num = num / 0
    num = num / 10

    # will yield a TypeError
    # arr["dog"]
    arr[0]
rescue ZeroDivisionError
    puts "Division by zero error!"
# use "=>" to store exception message in a variable
rescue TypeError => e  
    puts e
else
    puts "Success!"
end
