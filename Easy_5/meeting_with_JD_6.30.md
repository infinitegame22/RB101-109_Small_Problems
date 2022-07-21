# 2. What will the return value be in this example? Use what you've learned so far to break it down on your own before checking the solution below.

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

calling map on nested array [[1, 2], [3, 4]]
arr = [1,2]
  calling map on [1,2]
    num = 1
    num * 2 => 2
  calling map on 2
    num = 2
    num * 2 => 4
  return [2, 4]
  block returns [2, 4] to outer map
arr = [3, 4]
  calling map on [3, 4]
    num = 3
    num * 2 => 6
  calling map on 4
    num = 4
    num * 2 => 8
  return [6, 8]
  block returns [6, 8] to outer map
  outer map returns [2,4], [6,8] into original array
  


# given this data structure, how would you access the elements, and return a new array with the same structure but every integer incremented by 1x

# p [[[1, 2], [3, 4]], [5, 6]]

=begin
Level 1 - multi-dimensional array with 2 elements `[[1, 2], [3, 4]]` and `[5, 6]`
Level 2 - element one has two elements `[1, 2]` and `[3, 4]`.  Element two has two elements `5` and `6`
Level 3 - element one has four elements `1` and `2` 

level 1 = [[[1, 2], [3, 4]], [5, 6]].map
level 2 = [[1,2], [3,4]] & [5,6].map
level 3 = [1, 2] & [3, 4] & 5, 6
level 4 = 1, 2, 3, 4

input - Array
output - Array

Algorithm - what do I want to return? - this will help determine the method to use
  iterate through the multi-dimensional Array and return an array with matching nested arrays
  Iterate over the sub-arrays on level 2
  IF array then break down further access elements in the array
    and add one
  ELSE (integer) add 1 to the integer for the new Array
=end 

p (
[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |element|
    if element.class == Array
      element.map do |num|
        num + 1
      end
    else
      element += 1
    end
  end
end
)

p (
[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
)
# => [{ :c => "cat" }]

=begin
Level 1 = [{ a: 'ant', b: 'elephant' }, { c: 'cat' }]
Level 2 = { a: 'ant', b: 'elephant' } & { c: 'cat' }

`select` is called on the array and passed the argument of hash -> return value of the block executed on lines 42-43
`all?` method is invoked on each `hash` key/value pair --> return value of block executed on line 43 --> false, false, true
return value of the block { c: 'cat' }

=end