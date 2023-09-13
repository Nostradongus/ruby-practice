# Using a hash

## Ruby hashes are similar to Python dictionaries
## Key - Value pairs
states = {
    "Pennsylvania" => "PA",
    "New York" => "NY",
    :Oregon => "OR", # can also use colon instead of string enclosing for keys
    1 => "Integer", # can also use numbers for keys
    5.5 => "Float",
}

puts states
puts states[:Oregon]
puts states["New York"]
puts states[1]
puts states[5.5]

## more on ruby docs:
## https://ruby-doc.org/core-3.1.0/Hash.html
