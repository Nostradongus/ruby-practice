# File management

## Reading a file

### Method 1
File.open("./employees.txt", "r") do |file|
    # # display file metadata
    # puts file        

    # # read and display all contents
    # puts file.read() 

    # # read current line and move to next line
    # puts file.readline() 

    # # read current character
    # puts file.readchar()

    # read each line in an array
    for line in file.readlines()
        puts line
    end
end

### Method 2
### Has to manually close the file unlike Method 1
file = File.open("employees.txt", "r")
puts file.read()
file.close()


## Writing a file

### Method 1: append mode
File.open("employees.txt", "a") do |file|
    file.write("\nOscar, Accounting")
end

### Method 2: write mode
### will overwrite the file's contents
File.open("employees.txt", "w") do |file|
    file.write("\nOscar, Accounting")
end

### create a new html file
File.open("index.html", "w") do |file|
    file.write("<h1>Hello</h1>")
end


## Reading and writing a file
File.open("index.html", "r+") do |file|
    file.readline() # move to second line

    # override first and second position of second 
    # line, results to "Hidy, Sales"
    file.write("Hi")
end
