=begin
Write a method that rotates an array by moving the first element to the end of the array.
- The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

input: Array
output : Array

Requirements:
- don't use `rotate`
- original array NO MUTATION!

Example:

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

D: array => Array

A: iterate over the array
   - working with a copy
 Save the first element into a variable - so it's not lost
 Assign last element to be the first
assign the variable to be the first element

Alternate A:
  - Duplicate array as separate object
  - remove first index Object
  - place in back of array
=end
def rotate_array(array)
  new_array = array.clone
  first_index = new_array.shift
  new_array << first_index
end


 p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
 p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
 p rotate_array(['a']) == ['a']


 a = [1, 2]

a[0], a[-1] = a[-1], a[0]

p a