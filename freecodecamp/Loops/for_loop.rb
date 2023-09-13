# Using for loops

friends = ["Kevin", "Karen", "Oscar", "Angela", "Andy"]

## method 1: for each loop
for friend in friends
    puts friend
end

print "\n"

## method 2: for each in the array object itself
friends.each do |friend| # friend is the variable
    puts friend
end

print "\n"

## method 3: indexing
for index in 0..4 # range 0-4, end value inclusive
    puts friends[index]
end

print "\n"

## method 4: times() method of an integer
## |index| can be removed if the variable will not be used
5.times do |index|
    puts friends[index]
end

print "\n"

5.times { |index| 
    print friends[index], " "
}
