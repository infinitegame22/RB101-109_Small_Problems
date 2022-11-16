=begin
Write a method that can rotate the last n digits of a number. For example:

given a number and a target to rotate
split the number into digits
  reverse to get correct order
remove number at index location (use negative indexing)
place as last number
rejoin digits as an integer

E:
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
91 --> 19
rotate_rightmost_digits(735291, 3) == 735912
291 --> 912
rotate_rightmost_digits(735291, 4) == 732915
5291 --> 2915
rotate_rightmost_digits(735291, 5) == 752913
35291 --> 52913
rotate_rightmost_digits(735291, 6) == 352917
735291 --> 352917

A:
- find the -n character 
- move that element to the back





=end

def rotate(arr)
  arr[1..-1] + arr[0]
end

def rotate_rightmost_digits(int, n)
  num_arr = int.digits.reverse
  rotation = num_arr.pop(n)
  backend = rotate(rotation)
  num_arr << backend
  num_arr.join.to_i
end

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

# Write a method that can rotate the last n digits of a number. For example:

=begin
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.


Goal: intake two integers, the first one is the one to be rotated and the second one is the number of digits to rotate.  
Input: integer, integer
Output: integer

Rules: 
- n is always a positive number
- number to be rotated is a positive number
E:
(735291, 1) == 735291
- not rotated, last digit remains in place
(735291, 2) == 735219
- 19 --> 91 --> rotate the last two digits
(735291, 3) == 735912
- 291 --> 912 -> 2 moves to the back of the line, so rotating the array of the last 3 elements
(735291, 4) == 732915
5291 --> 2915, still only one integer gets moved, the digits to rotate is only indicating number of elements to include in array rotation

D: input: integer, integer
intermediate: array for digits
output: integer

A:
input: integer- rotated_integer,  integer- digits_to_b_rotated --> 735291, 2
- create an array_of_digits to store the digits of the array
- create an array only including the number of digits_to_b_rotated from the end of the array_of_digits using a range from negative digits to b rotated until the end and save in a variable called truncated_array_of_digits --> [9, 1]
- subtract the truncated_array_of_digits from the array_of_digits
- call the rotate_array method on the truncated_array_of_digits and save back into itself--> rotate_array([9, 1]) --> [1, 9]
-  add the truncated_array_of_digits to array_of_diggits
- join the array_of_digits and return it
=end

def rotate_rightmost_digits(rotated_integer, digits_to_b_rotated)
  array_of_digits = rotated_integer.digits.reverse

  truncated_array = array_of_digits[-digits_to_b_rotated..-1]

  array_of_digits = array_of_digits - truncated_array

  truncated_array = rotate_array(truncated_array)
  
  array_of_digits = array_of_digits + truncated_array

  array_of_digits.join.to_i
end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
# p rotate_rightmost_digits(7357291, 6) #== 7572913