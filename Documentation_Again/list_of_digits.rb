# Write a method that takes one argument, a positive integer, and returns a
# list of the digits in the number.

=begin
P - Input: One Argument == a positive Integer
Output: Array - list of the digits in the number

E - 
D - Array
A - Pass the method an argument of a positive integer
  - Convert the intger into a string
  -Split the integer into a list one by one 
    - remove the individual integer from the larger whole
  - Store each integer into an array
=end
def digit_list(integer)
  arr = integer.to_s.split('')
  for i in 0..arr.length-1 do
    arr[i] = arr[i].to_i
  end 
  p arr
end

digit_list(12345)
# == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

