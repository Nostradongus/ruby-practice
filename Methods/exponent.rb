# Creating an exponent method (pow)

## will not work for negative exponents
def exp(base, pow)
    result = 1

    # pow.times do |index|
    #     result = result * base
    # end

    # pow.times {|index|
    #     result = result * base
    # }

    # |index| was removed since it was not used
    pow.times {
        result = result * base
    }

    return result
end

print exp(2, 3)
