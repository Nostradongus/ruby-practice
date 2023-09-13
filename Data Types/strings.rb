# Working with strings

## printing a quotation mark (")
puts "Giraffe \" Academy"

## printing a new line
puts "Giraffe\nAcademy"

## printing a variable that contains a string
phrase = "Giraffe Academy"
puts phrase

## string methods / functions
### upcase (uppercase) --> returns a string
puts phrase.upcase() # open and close parentheses is optional
puts phrase.upcase   # still works even without the parentheses
puts "programming".upcase()

### strip (whitespace trim) --> returns a string
phrase = "       Giraffe Academy        "
puts phrase.strip()

### length (number of characters) --> returns a number
phrase = "Giraffe Academy"
puts phrase.length()

### include? (does it include a substring?) --> returns a boolean
puts phrase.include? "Academy"
puts phrase.include? "Academys"

### index (index position of character) --> returns a number
puts phrase.index("G")
puts phrase.index("ffe")    # starting position of first character

## accessing a character in the string (array indexing; zero-based)
puts phrase[0]
puts phrase[1]
puts phrase[-1]     # same as python; negative indexing
puts phrase[0,3]    # like python; slicing
