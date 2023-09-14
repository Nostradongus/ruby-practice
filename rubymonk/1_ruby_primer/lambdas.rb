# A lambda in Ruby is just a "function without a name"
# Lambdas in Ruby are also objects, just like everything else

# The last expression of a lambda is its return value, just like regular functions
l = lambda { "Do or do not" }
puts l.call

# Lambdas also take parameters (arguments) by surrounding them with pipes (|)
l = lambda do |string|
    if string == "try"
        return "There's no such thing"
    else
        return "Do or do not."
    end
end
puts l.call("try")

# Note that the curly braces ({}) that wrapped the lambda was replaced with do...end.
# Both work equally well, however, the convention is to use {} for single line lambdas and do..end for lambdas that are longer than a single line.
