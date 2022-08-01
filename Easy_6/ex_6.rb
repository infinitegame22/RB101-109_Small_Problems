=begin
Write a method that takes two arrays as arguments, and returns 
and array that contains all of the values from the argument
arrays.  There should be no duplication of values in the 
returned array, even if there are duplicates in the original arrays

input: 2 arrays
output: 1 array

Requirements:
- no duplication of values in the returned array, i.e. delete
duplicates from the two input arrays
- what happens if the elements are strings

E:
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 4, 6, 9]
merge(['cat', 'dog', 'ferret', 'cow'], ['horse', 'owl', 'cat', 'dog']) == ['cat', 'dog', 'ferret', 'cow', 'horse', 'owl']

D: array

A: 
- initialize an empty merged_array
- iterate over the two array objects
  - IF object does not exist in merged_array
    - add it to the merged_array
- return merged_array

=end

def merge(arr1, arr2)
  merged_array = arr1 + arr2
  merged_array.uniq
end

p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]
p merge(['cat', 'dog', 'ferret', 'cow'], ['horse', 'owl', 'cat', 'dog']) == ['cat', 'dog', 'ferret', 'cow', 'horse', 'owl']
