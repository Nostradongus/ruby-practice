# Using classes

## Book 

### Class

# class Book
#     # attributes that the Book class will have
#     attr_accessor :title, :author, :pages
# end

#### With initialize method
class Book
    # attributes
    attr_accessor :title, :author, :pages
    
    # constructor method with parameters
    # special method, immediately called when "new" is called
    def initialize(title, author, pages)
        # inside the class, use '@' to access it's attributes
        # similar to 'self' of Python or 'this' of Java
        @title = title
        @author = author
        @pages = pages
    end
end

### Object
book1 = Book.new("Harry Potter", "J.K. Rowling", 400)
# book1.title = "Harry Potter"
# book1.author = "J.K. Rowling"
# book1.pages = 400
book2 = Book.new("Lord of the Rings", "Tolkien", 500)

puts "Book 1: #{book1.title}, #{book1.author}, #{book1.pages}"
puts "Book 2: #{book2.title}, #{book2.author}, #{book2.pages}"

print "\n"

## Student

### Class
class Student
    attr_accessor :name, :major, :gpa

    def initialize(name, major, gpa)
        @name = name
        @major = major
        @gpa = gpa
    end

    # instance method
    def has_honors
        if @gpa >= 3.5
            return true
        end
        return false
    end
end

### Object
student1 = Student.new("Jim", "Business", 2.6)
student2 = Student.new("Pam", "Art", 3.6)

puts "#{student1.name} is #{student1.has_honors ? "a" : "not a"} honor student."
puts "#{student2.name} is #{student2.has_honors ? "a" : "not a"} honor student."