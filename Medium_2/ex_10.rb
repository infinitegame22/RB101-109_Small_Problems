=begin

Sum Square - Square Sum

Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

Goal: intake an integer and return difference between the sum of the squares from 1 to n and the sum of the squares of the integers from 1 to n.
input: integer
output: integer

Rules: 
- first number is the sum of 1 to n squared
- second number is the sum of each integer from 1 to n squared
- input integers are all positive

E: 
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)

sum_square_difference(10) == 2640
(1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10)**2 - (1**2 + 2**2 + 3**2 + 4**2 ...) == 2640

D: 
- store range of 1 to integer in an array called `number_range`
- iterate over `number_range` and square every element and store in `squared_number`
- sum each array
- calculate the difference of number_range sum squared minus the sum of `squared_number` array
=end

def sum_square_difference(int)
  number_range = (1..int).to_a

  squared_number_arr = number_range.map { |num| num ** 2 }

  number_range.sum ** 2 - squared_number_arr.sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150