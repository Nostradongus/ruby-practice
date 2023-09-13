# Building a Mad Libs 

print "Enter a color: "
color = gets.chomp()

print "Enter a plural noun: "
plural_noun = gets.chomp()

print "Enter a celebrity: "
celebrity = gets.chomp()

## like Python, you can use hashtags (#) in a string
## to do string interpolation instead of using '+'
## for string concatenation
puts "Roses are #{color}"
puts "#{plural_noun} are blue"
puts "I love #{celebrity}"