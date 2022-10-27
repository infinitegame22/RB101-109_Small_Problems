=begin

Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Goal: intake an array and rotate the array by moving the first element to the end of the array. 
input: array
output: array rotated

Rules:
- do not use the methods rotate or rotate!
- do not modify the original array
- array can be made of integers and characters

D: input: array
intermediate: storage array
output: array

A:
- initialize rotated_arr to empty array
- iterate over the intake array -->[7, 3, 5, 2, 9, 1]
  - save the element at 0 index to a variable called `zero_index` --> 7
  - for any number that is not the 0 index
    - next if index is equivalent to 0
    - otherwise push the element into a new array - rotated_arr --> [3, 5, 2, 9, 1]
    - push the `zero_index` element into the rotated_arr --> [3, 5, 2, 9, 1, 7]
- return the rotated_arr

=end

def rotate_array(arr)
  rotated_arr = []

  zero_index = arr[0]

  arr.each_with_index do |el, idx|
    next if idx == 0
    rotated_arr << el
  end
  rotated_arr << zero_index
end


def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1])  == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c'])     == ['b', 'c', 'a']
p rotate_array(['a'])               == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
p rotate_array([7, 3, 5, 2, 7, 9, 1])  == [3, 5, 2, 7, 9, 1, 7]

