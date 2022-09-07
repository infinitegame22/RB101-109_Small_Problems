=begin
Write a method that takes one argument, a positive integer, and returns the sum of its digits.

input: integer
output: integer

E: 23 => 2 + 3 => 5
496 => 4 + 9 + 6 => 19

D: integer => string => array of strings => array of integers

A: change integer to string
break string into characters array
iterate over the array and adjust the characters to integers
sum the array
return the sum
=end

def sum(integer)
  integer.to_s.chars.map(&:to_i).sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45