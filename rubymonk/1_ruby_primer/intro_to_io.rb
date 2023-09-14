# Ruby defines constants STDOUT, STDIN, and STDERR that are IO objects (from IO class) pointing to a program's input, output, and error streams which can be used through the terminal, without opening ay new files.

# Whenever you call 'puts', the output is sent to the IO object that STDOUT points to
p STDOUT.class
p STDOUT.fileno

# It is the same for 'gets', where the input is captured by the IO object for STDIN
p STDIN.class
p STDIN.fileno

# And for the 'warn' method which directs to STDERR.
p STDERR.class 
p STDERR.fileno

# Opening and closing a file - variable storage
# mode is a string that specifies the way you would like your file to be opened.
mode = "r+" # r+ => read-write mode, there are more modes out there
file = File.open("friend-list.txt", mode)
puts file.inspect
puts file.read
file.close

# Opening and closing a file - block usage
# The file will automatically close after the block code ends
what_am_i = File.open("clean-slate.txt", "w") do |file|
  file.puts "Call me Ishmael."
end
p what_am_i # nil as the file has already been closed after the block
File.open("clean-slate.txt", "r") {|file| puts file.read }

# Reading and writing a file

# File#read accepts two optional arguments: 'length' which is the number of bytes upto which the stream will be read, and 'buffer' which is a string buffer that will be filled with the file data
# The buffer is sometimes useful for performance when iterating over a file, as it re-uses an already initialized string
file = File.open("friend-list.txt", "r+")
p file.read
file.rewind # try commenting out this line to see what happens!
            # can you guess why this happens?
            # Answer: resets line (cursor) position to zero
buffer = ""
p file.read(23, buffer)
p buffer
file.close

# File#seek "seeks" a particular byte in the file to tell Ruby where you want to start reading from
# If you want a particular set of bytes from the file, you can then pass the length parameter to File#read to select a number of bytes from your new starting point.
p File.read("friend-list.txt")
File.open("friend-list.txt") do |f|
    f.seek(20, IO::SEEK_SET)
    p f.read(10)
end

# File#readline returns an array of all the lines of the opened IO stream
# You can, again, optionally limit the number of lines and/or insert a custom separator between each of these lines.
lines = File.readlines("friend-list.txt")
p lines
p lines[0]

# File#write is used to write to a file
# It also returns the number of bytes that were written
# Given that files work the same as the IO stream of the program, puts and print can also be used
File.open("foo.txt", "w") do |f|
  f.write "Bar\n"
end

# You can also append to a file in a short way
# Available only for Ruby 1.9.3 and above
File.write('foo.txt', 'Baz', mode: 'a')
