=begin
Write a method that takes a positive integer, `n`, as an
argument, and displays a right triangle whose sides each
have `n` stars.  The hypotenuse of the triagnle (the dia-
gonal side in the images below) should have one end at the
lower-left of the triangle, and the other end at the upper=right.

In my own words:
Take positive integer input `n` and output a right triangle
whose sides equal `n` stars.

Problem-
Input: integer
output: strings of stars

Requirements:
- positive integer input
- first star of each is only 1
- each line grows one more star
- everything is right justified

relate virtual things to the actual thing/mental model.
whenever I can apply something theoretical, visualize data
in memory.  

We both know what an array is.  When I think of an array, I
think of a bunch of squares in a line with values inside of it

all of the characters ' ' are prefixing the asterisks * . 
Full rectangle.

Understand how certain things work.  What is missing in the
gaps?

Function is printing top down.  When print actual output, as
iterate, write top down. 1, 2, 3, 4, 5.  We iterate left to right
top down.

iteratoe over n n times
at each iteration, what is the math to give - and *
puts n - 1 
=end
# def triangle(n)
#   (1..n).reverse_each do |current_number|
#     number_of_dashes = current_number - 1
#     number_of_stars = n - number_of_dashes
#     puts "%s%s" % ['-' * number_of_dashes, '*' * number_of_stars]
#   end
# end

# def triangle(n)
#   (1..n).reverse_each {|current_number|puts "%s%s" % [' ' * (current_number-1), '*' * (n - (current_number - 1))]}
# end

# def triangle(n)
#   (1..n).reverse_each {|current_number| puts "%s" % ['*' * (n - (current_number - 1))].rjust}
#   end
def triangle(int)
  triangle_rows = []
  stars = 1
  loop do
    triangle_rows << ("#{'*' * stars}".rjust(int))
    stars += 1
    break if triangle_rows.length >= int
  end
  triangle_rows
end

# Frank
def triangle(int)
  counter = 0

  loop do
    puts (" " * (int - counter)) + ("*" * counter)
    counter += 1
    break if counter > int
  end
end

def triangle(int)
  counter = integer_to_string

  loop do
    puts ("*" * counter) + (" " * (int - counter))
    counter -= 1
    break if counter < 0
  end
end

def triangle(int)
  counter = 0

  loop do
    puts ("*" * counter) + ( " " * (int - counter))
    counter += 1
    break if counter > int
  end
end

triangle(5)

# anything you loop over is an iterable
# hash (map in other languages)
# typically an interface and implementation, OOP, usually
# map is interface in Java
  # map has three methods
  # any implementation that has this interface has to provide
  # different types of maps and implementation lines. 
  # interfaces are like contracts
  # an actual interface - something I interact with
     # - car has a steering wheel and a gas pedal 
      # diff. options
      # I only care about push down for go faster

# Hash has_key? could be a method in an interface, so interface
 # has key and takes in whatever object type, could have a bunch
 # of diff. types implementation wise. Own way of chekcing if keys
 # exist, but all have a way of doing the same thing.
 

# ----*
# ---**
# --***
# -****
# *****

triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********