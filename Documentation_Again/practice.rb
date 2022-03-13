=begin 
Write a program that asks the user to enter an integer greater than 0, 
then asks if the user wants to determine the sum or product of all numbers 
between 1 and the entered integer.

Input : integer > 0
Output : determined by the user - sum or product of all numbers between 1
and entered integer
Sidenotes: Has to be an integer > 0
needs two branches for output
1. sum of all numbers b/t 1 and entered integer
2. product of same as above

E - 
D - methods to multiply and add
A - 
Ask user for integer greater than 0.
SET input = integer answer
SET choice = user choice for output
IF user inputs 's'
  - calculate sum of integer plus every number between integer and 0
  - how to execute? loop over range from 0 to integer adding each consecutive
    integer
  RETURN sum
ELSE user inputs 'p'
  - calculate product of integer multiplied by every number between integer
  and 0
  - iterate over range from 1 to entered integer and multiply
  RETURN product
=end

puts ">> Please enter an integer greater than 0:"
input = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

if choice == 's'
  (1..input).each do |num| 
    input += num
  end
else
  (1..input).each do |num|
  input *= num
  end
end

p input