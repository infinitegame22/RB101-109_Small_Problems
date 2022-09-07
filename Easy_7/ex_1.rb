=begin
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.
P:
input: 2 arrays
output: 1 array with the elements of the two input
arrays combined and alternated

Requirements:
- both input arrays are non-empty
- both input arrays have same number of elements

E: [1, 2, 3] and ['a', 'b', 'c']  --->
[1, 'a', 2, 'b', 3, 'c']
index 0 from arr1 and then index 0 from arr2, and so on

D: array -> array

A:
initialize empty array
iterate over the 1st array
  - use two arguments
    - 1 to track the element in the array
    - 2nd one to track the index
  - push the elements alternately into the newly initialized array
return the array


=end

def interleave(arr1, arr2)
  mixed_array = []
  arr1.each_with_index do |element, index|
    mixed_array << element << arr2[index]
  end
  mixed_array
end

    
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']