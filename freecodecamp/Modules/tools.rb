# A Tool module

module Tools
    def say_hi(name)
        puts "Hello #{name}!"
    end

    def say_bye(name)
        puts "Bye #{name}!"
    end
end

## including in the same file
## take note that the code lines below will run when called by the
## caller file using "require_relative"

# include Tools
# Tools.say_bye("Mike")
