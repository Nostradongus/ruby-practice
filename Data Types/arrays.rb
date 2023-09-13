# Using arrays

## Can store single or multiple data types in a single array
friends = Array["Kevin", "Oscar", 1, true]

## using print
print friends
print "\n\n"

## using puts
puts friends
print "\n"

## accessing an element in the array (indexing)
puts friends[0]
puts friends[-1]
puts friends[0, 2]  # range (slice in python)
print "\n"

## modifying an element in the array
friends[0] = "Dwight"
puts friends
print "\n"

## initializing an array without elements
arr = Array.new     # will contain nil (null)

## adding an element to an array
arr[0] = "Michael"
arr[5] = "Holly"    # arr[2] to arr[4] will contain nil

## checking length of array
puts arr.length
print "\n"

## checking if an element exists in the array
puts friends.include? "Karen"
print "\n"

## reverse an array
puts friends.reverse
print "\n"

## sorting an array
## all elements must have the same data type or an error
## will be caused
arr = ["Basic", "Andy", "Cargan"]
puts arr.sort

## more at ruby docs: 
## https://ruby-doc.org/core-3.1.0/Array.html
