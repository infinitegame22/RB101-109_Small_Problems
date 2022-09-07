=begin

As a student new to Ruby, I had a very hard time understanding this question. I couldn’t even read it.  But now I know now.

Check this out!

Ruby loose! Kick off your File::path - this directs the system to output the string version of the file path and creates a new file.

- class method

File#path

- Returns the pathname used to create `file` as a string. Does not normalize the name.
- instance method

Class methods are called in the class, while intstance methods
are called on objects. Thus:
=end
puts File.path('bin')

# calls the class method `File::path` since we're calling it
# on the `File` class, while:

f = File.new('my-file.txt')
puts f.path

=begin
calls the instance method `File#path` since we're calling it on
an object of the `File` class, namely `f`.
=end