=begin
Write a method that combines two arrays passed in as arguments,
and returns a new array that contains all elements from both
array arguments, with the elements taken in alternation.

Both input arrays are non-empty, and that they have the same
number of elements.

input:two arrays
output: one array with all the elements from the input array

Combine the two arrays to make one array, make sure the elements
are alernating - 1 from the first array, then the first element
from the second array.

requirements:
- make sure the elements are spaced 1 from frist array, then
next one from 2nd array all placed into the same final array
- both input arrays are non-empty, and they have the same 
number of elements

E - [1, 2, 3] ['a', 'b', 'c']
-----^      ----^
[1, 'a']

D:

A: initialize empty holder array
iterate through both arrays simultaneously
pick 1st element from first array

=end
def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

# LS

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << elements << array2[index]
  end
  result
end

# JD
def interleave(arr1, arr2)
  arr1.each_with_index.with_object([]) do
    |(element, idx), array| array << element << arr2[idx]
  end
end

# Frank

def interleave(arr1, arr2)
  new_arr = []

  loop do
    new_arr << arr1.shift
    new_arr << arr2.shift
    break if arr2.empty?
  end

  new_arr
end

# Richard Lee
def interleave(arr1, arr2)
  merged_arr = []
  idx = 0
  loop do
    curr_val_arr1 = arr1[idx]
    curr_val_arr2 = arr2[idx]
    merged_arr << curr_val_arr1
    merged_arr << curr_val_arr2
    idx += 1
    break if idx == arr1.size
  end
  merged_arr
end

# Oliver Shaw
def interleave(arr1, arr2)
  index = 1

  arr2.each_with_object(arr1) do |element, array|
    array.insert(index, element)
    index += 2
  end
end


p interleave([1, 2, 3], ['a', 'b', 'c']) # == [1, 'a', 2, 'b', 3, 'c']

# https://www.thoughtco.com/combining-arrays-in-ruby-2907842

=begin
In our solution, we use `#each_with_index` to get values and
index numbers for array1, then use the index number to access
the corresponding element in array2.


=end