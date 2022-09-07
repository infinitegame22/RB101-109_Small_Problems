=begin
Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

Input: positive integer
Output: array

GOAL: break the number in to pieces and store it in a list

Requirements:
- positive integer

E: 12345 => [1, 2, 3, 4, 5]
375290 => [3, 7, 5, 2, 9, 0]

D: integer => string => array => integer
=end
def digit_list(integer)
  integer.to_s.chars.map(&:to_i)
  # array.map do |char|
  #   char.to_i
  # end
end
 

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true