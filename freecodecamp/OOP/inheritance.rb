# Using OOP inheritance

## Chef (super class)
class Chef
    def make_chicken
        puts "The chef makes chicken"
    end
    
    def make_salad
        puts "The chef makes salad"
    end

    def make_special_dish
        puts "The chef makes bbq ribs"
    end
end

## Italian Chef (sub-class; inherits Chef)
class ItalianChef < Chef
    def make_pasta
        puts "The chef makes pasta"
    end

    # Override method
    def make_special_dish
        puts "The chef makes gnocchi"
    end
end

chef = Chef.new() 
italian_chef = ItalianChef.new()

print chef.make_special_dish
print italian_chef.make_pasta
print italian_chef.make_special_dish
