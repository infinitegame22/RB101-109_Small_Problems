=begin
Write a method that displays a 4-pointed diamond in an n x n 
grid, where `n` is an odd integer that is supplied as an 
argument to the method. Assume the argument will always
be an odd integer.

input: integer
output: string diamond

GOAL: Display a 4-pointed diamond in an integer x integer
grid.  The integer is an odd integer and always will be.

Requirements:
- argument will always be odd integer 1, 3, 5
- draw a diamond in lines of '*'
- the line of '*''s at its widest is equal to the integer
passed in as an argument
- the '*' at the top line is center justified
- the next line of '*''s will be an odd integer 2 more than
the first one.

E: diamond(5)

    *
  * * *
* * * * *
  * * *
    *

D: string

A: print out the '*' operator centered in the line only once
print out the '*' operator * number - 2
build the center line based on the integer passed, that is 
  the pointy line of the diamond
print out the num
*******
puts '*' * num - `2 
=end

#LS solution

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1)/ 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance)}
  1.upto(max_distance)   { |distance| print_row(grid_size, distance)}
end

# def diamond(n)
#   '*'.center(n)
#   '*' * ().center(n)
# end

p diamond(1)

# *

p diamond(3)

#  *
# ***
#  *

p diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *