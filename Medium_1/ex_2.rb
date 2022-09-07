=begin
Write a method that can rotate the last n digits of a number. For example:

given a number and a target to rotate
split the number into digits
  reverse to get correct order
remove number at index location (use negative indexing)
place as last number
rejoin digits as an integer

=end
def rotate(array)
  n_array = array.dup
  n_array.push(n_array.shift)
end

def rotate_rightmost_digits(num, target)
  num_array = num.digits.reverse
  rotation = num_array.pop(target)
  backend = rotate(rotation)
  num_array << backend
  num_array.join.to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

=begin
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.
=end