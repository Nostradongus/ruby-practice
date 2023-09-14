# A Hash in Ruby is a collection of key-value pairs.
# Also called 'associative arrays', 'dictionary', and 'HashMap' etc. in other programming languages.

# Creating an empty hash
hash = {}
hash = Hash.new # the same

# Creating a hash with values
student_ages = {
    "Jack" => 10,
    "Jill" => 12,
    "Bob" => 14, # optionally may end with a comma (,) just like in Python
}

# Fetching values from a hash
puts student_ages["Jack"]

# Modifying a hash
student_ages["Jack"] = 16 # assigning new value to an existing key
student_ages["Violet"] = 18 # adding a new element

# Iterating over a hash
# Using Hash#each - unlike Array#each, two values are passed to the block which are the key and value of each element
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
restaurant_menu.each do |item, price|
  restaurant_menu[item] = price + (price * 0.1)
end
print restaurant_menu, "\n"

# Ideally, any transformation of a collection (like in the example above) should produce a new collection with the original unchanged making the code easier to understand and manage.
# However, speed and memory considerations often (and usually wrongly) trump maintainability and so the approach above is used quite frequently.

# Extracting the keys and values from a hash
# Using Hash#keys and Hash#values
print restaurant_menu.keys, "\n"
print restaurant_menu.values, "\n"

# More ways to create hashes - newer, faster

normal = Hash.new
was_not_there = normal[:zig] # :zig is not an existing key, thus returning nil
puts "Wasn't there:"
p was_not_there # Using p instead of puts calls the inspect() method; the same as "puts was_not_there.inspect()"

usually_brown = Hash.new("brown") # instead of nil, use "brown" as default value
pretending_to_be_there = usually_brown[:zig] # zig is not an existing key, therefore returns "brown" instead as the specified default value
puts "Pretending to be there:"
p pretending_to_be_there 

# As observed, a "normal" hash always return nil by default when empty. Specifying a default in the Hash constructor will always return a custom default for any failed lookups on that hash instance.

# Using Hash's class convenience method - Hash::[]
chuck_norris = Hash[:punch, 99, :kick, 98, :stops_bullets_with_hands, true]
p chuck_norris

a = [:punch, 0]
b = [:kick, 72]
c = [:stops_bullets_with_hands, false]
key_value_pairs = [a, b, c] # this means that each key-value pair contained in an array is also fine unlike the first example
p Hash[key_value_pairs]
