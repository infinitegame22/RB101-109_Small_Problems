=begin
If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

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


# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

=begin
735291 - original
352917 - first number rotated to end
329175 - rotate the last five digits - 5 gets moved to end
321759 - rotate the last four
321597 - rotate last three
321579 - invoke rotate?

turn num into an array of digits
using a variable to index the start of the rotation
until the index is equal to the last index
  iterate through the array
  rotate from index position
  increase index position by 1
=end

# index = 0
# 0.upto(array.size - 1)
# (0..array.size - 1).each

# create an index variable starting at 0 and add 1 until it reaches last index location of the array.

def max_rotation(num)
  num_array = num.digits.reverse
  index = 0
  until index == num_array.size - 1
    num_array[index..] = rotate(num_array[index..])
    index += 1
  end
  num_array.join.to_i
end

# turn num into an array of digits
# using a variable to index the start of the rotation
# until the index is equal to the last index
#   rotate array from index position
#     grab array elements using index for starting position to last element array[idx..]
#     shift the first element into last element array << (array.shift)
#     assign back to the original array elements using the index for start position

  # array[5..] = array[5..-1]
  # array[5..]
  # [1, 2, 3, 4, 5, 6] = [5, 6]

#   increase index position by 1
# convert num_array back to integer

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845