=begin
Write a method that takes an array as an argument, and returns
two arrays (as a pair of nested arrays) that contain the first
half and second half of the original array, respectively. If
the original array contains an odd number of elements, the 
middle element should be placed in the first half array.

input: array
output: array with two nested elements

E:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] => middle element placed 
in the first half array.

D: array

A: initialize nested_array and assign it an empty array.
- iterate over the array
- check for number of elements
- if even split evenly between two new arrays
- else adjust for more numbers in 1st array
=end

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

def halvsies(array)
  middle = (arra.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end


halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

=begin
`slice` method returns elements from self; does not modify self.
# https://ruby-doc.org/core-3.0.2/Array.html#method-i-slice

When a single Integer argument `index` is given, returns
the element at offset `index`:
=end

a = [:foo, 'bar', 2]
a[0] # => :foo
a[2] # => 2
a # => [:foo, 'bar', 2]

# If `index` is negative, counts relative to the end of `self`:
a = [:foo, 'bar', 2]
a[-1] # => 2
a[-2] # => "bar"
# If index if out of range, returns `nil`.

# When two integer arguments `start` and `length` are given,
# returns a new array of size `length` containing successive
# elements beginning at offset `start`:
a = [:foo, 'bar', 2]
a[0, 2] # => [:foo, "bar"]
a[1, 2] # => ["bar", 2]

# brasier's solution:
def halvsies(array)
  first_half = array.slice!(0...(array.length - array.length/2))
  [first_half, array]
end

# Lucas Sorribes' answer

def halvsies(array)
  array.size.odd? ? middle = array.size / 2 + 1 : middle = array / 2

  [array[0...middle]] + [array[middle..-1]]
end

# Frank Lee's solution

def halvsies(arr)
  second_arr = []
  pop_frequency = (arr.count) / 2
  pop_frequency.times { second_arr << arr.pop }
  [arr, second_arr.reverse]
end

# Jesse's answer
def halvsies(arr)
  arr_2 = []
  (arr.count / 2).times do
    arr_2.unshift(arr.pop)
  end
  [arr, arr_2]
end
