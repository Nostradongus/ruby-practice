# Modules in Ruby allows grouping of methods that you can then "include" or "mix into" any number of classes.
# Modules only hold behaviour, unlike classes, which hold both behaviour and state.
# Since a module cannot be instantiated, there is no way for its methods to be called directly. Instead, it should be "included" in another class, which makes its methods available for use in instances of that class.

# In order to include a module into a class, we use the method include which takes one parameter - the name of a Module.
module WarmUp
    def push_ups
        "Phew, I need a break!"
    end
end
class Gym
    include WarmUp

    def preacher_curls
        "I'm building my biceps."
    end
end
class Dojo
    include WarmUp

    def tai_kyo_kyu
        "Look at my stance!"
    end
end
puts Gym.new.push_ups
puts Dojo.new.push_ups

# Just like all classes are instances of Ruby's Class, all modules of Ruby are instances of Module.

# Interestingly, Module is the superclass of Class which means that all classes are "also modules", and can be used as such
module WarmUp
end
puts WarmUp.class       # Module
puts Class.superclass   # Module
puts Module.superclass  # Object

# Object is the top of the hierarchy - the top-most parent class of every class in Ruby.

# Modules as Namespaces - modules serve as a convenient tool for bundling logically-related objects together.
# This allows classes or modules with conflicting names to co-exist while avoiding collisions. Think of this as storing different files with the same names under separate directories in a file system.

# Modules can also hold classes
# The example below defines an Array class under the Perimeter module which does not affect Ruby's Array class at all
# The Array class defined in Perimeter is different from Ruby's Array class
# This is possible because we've namespaced our version of the Array class under the Perimeter module.
# The double colon (::) is a constant lookup operator that looks up the Array constant only in the Perimeter module.
module Perimeter
    class Array
        def initialize
            @size = 400
        end
    end
end
our_array = Perimeter::Array.new
ruby_array = Array.new
p our_array.class
p ruby_array.class

# While the examples above are a bit contrived for the sake of simplicity. The real problem that namespacing solves is when you're loading libraries. 
# If your program bundles libraries written by different authors, it is often the case that there might be classes or modules defined by the same name.

# The constant lookup (::) operators as previously stated is used to scope the class to the module
# As the name suggests, it can also scope any constant and not just classes
module Foo
    A = 4
    module Kata
        B = 8
        module Roulette
            class ScopeIn
                def push
                    15
                end
            end
        end
    end
end
A = 16
B = 23
C = 42
puts
puts "A - #{A}"
puts "Foo::A - #{Foo::A}"
puts
puts "B - #{B}"
puts "Foo::Kata::B - #{Foo::Kata::B}"
puts
puts "C - #{C}"
puts "Foo::Kata::Roulette::ScopeIn.new.push - #{Foo::Kata::Roulette::ScopeIn.new.push}"

# If a '::' is prepended to a constant without a parent, the scoping happens on the topmost level
module Kata
  D = 5
  module Dojo
    E = 9
    D = 7
    
    class ScopeIn
      def push
        # With '::', it is now referring to D outside the Kata module (the global D)
        ::D
      end
    end
  end
end
D = 10
puts
puts Kata::Dojo::ScopeIn.new.push
