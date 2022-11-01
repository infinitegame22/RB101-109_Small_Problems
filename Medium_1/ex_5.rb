=begin
Diamonds!

Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

Goal:
intake an odd integer n and output a four pointed diamond in a n x n grid.
Input: odd integer
output: set of strings that creates a four pointed diamond

Rules: 
- argument will always be an odd integer
- always output a 4 pointed diamond
- diamond is made up of * operatrs and spaces

E: diamond(1)

*

diamond(3)

 *
***
 *

diamond(5)

  *
 ***
*****
 ***
  *

diamond(7)

   *
  ***
 *****
******* 
 *****
  ***
   *

 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

D:
input: integer
intermediate: calculating multiple operators and outputing to console
output: set of strings

A:
- intake one argument `n` an odd integer
- iterate over a range starting at 1 and upto the input integer
  - IF the integer at iteration is odd
    - output the result of multiplying the '*' operator by the current element centered on input integer n
  - otherwise do nothing
  - The longest row is left side adjusted
- iterate backwards over the range of 1 upto but not including the input integer n.
  - IF the integer at iteration is odd
    - output the result of multiplying the '*' operator by the current element centered on input integer n

***************SCRATCHPAD**********
(1..n).each do |element|
  if element.odd?
    puts ('*' * element).center(n)
puts '*' * 3.center(3)
puts '*' * 1.center(3)
=end

def diamond(int)
  (1..int).each do |element|
    if element.odd?
      puts ('*' * element).center(int)
    end
  end
  (1...int).reverse_each do |element|
    if element.odd?
      puts ('*' * element).center(int)
    end
  end
end

def print_row(grid_size, distance_from_center)
  if (grid_size - 1) / 2 == distance_from_center
    puts '*'.center(grid_size)
  else
    number_of_spaces = (grid_size - 2 * distance_from_center) - 2
    stars = '*' + ' ' * number_of_spaces + '*'
    puts stars.center(grid_size)
  end
end

diamond(1)
diamond(3)
diamond(5)
diamond(9)




def diamond_as(n)
  # print top half of diamond, including waist
  (1...n).each do |count|
    next if count.even?
    puts ('*' * count).center(n)
  end

  # print bottom half of diamond, excluding waist
  (n.downto(1)).each do |count|
    next if count.even?
    puts ('*' * count).center(n)
  end
end