# Unlike a lambda, a block is a piece of code that cannot be stored in a variable and is also not an object.
# It is, as a consequence, significantly faster than a lambda, but not as versatile.
# Also one of the rare instances where Ruby's "everything is an object" rule is broken.

# Sample demo of using a block
def demonstrate_block(number)
    # yield is called to pass 'number' as a parameter to the block; this is needed to use blocks
    yield(number)
end
puts demonstrate_block(1) { |number| number + 1 }

# It can be observed that blocks are used for methods like Array#inject, etc.

# It turns out that one of the most common uses for a lambda involves passing exactly one block to a method which in turn uses it to get some work done.
# l = lambda { |number| number + 1 } <-- this is a block yielded by the lambda function (may not be true but to easily understand the concept)

# You will see the usage of blocks all over the place in Ruby especially in Array iteration.
