=begin
Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

input: array
output: array

A:
iterate over the array
  - if index is even, add this to return value array
  - else move on to the next one
return new array
=end

def oddities(array)
  even_index_array = Array.new
  array.each_with_index { |elem, idx| idx.even? ? even_index_array << elem : next }
  even_index_array
end

p oddities([2, 3, 4, 5, 6]) # == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) # == [1, 3, 5]
p oddities(['abc', 'def']) # == ['abc']
p oddities([123]) == [123]
p oddities([]) == []