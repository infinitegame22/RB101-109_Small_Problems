=begin

Sequence Count

Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

goal: intake two integers where the first integer is a count and the second is the start of a new sequence created by our method.  Return an array that contains count number of arguments and the values of each element of the array are multiples of the second integer arguement.
input: two integers `count` and `starting_num`
output: array of integers

Rules: 
- count will always be 0 or greater
- starting_num will be any Integer
- if count is 0, return an empty list

E:
sequence(5, 1) == [1, 2, 3, 4, 5]
count = 5 >> array.size == 5, starting at 1, each subsequent element is a multiple of 1
1 (index + 1)* 1 = 1 >> [1]
1 * (index + 1) >> [1, 2]
1 * (index + 1) >> [1, 2, 3]

sequence(4, -7) == [-7, -14, -21, -28]
count = 4 >> array.size == 4
(index + 1) * -7 == [-7]
(index + 1) * -7 == [-7, -14]

sequence(3, 0) == [0, 0, 0]
any number * 0 is 0
sequence(0, 1000000) == []
count is 0 == []

D: 
input: two integers `count` and `starting_num`
intermediate: push the result of index+1 * the starting_num into the storage_array
output: array of integers

A: 
input: two integers `count` and `starting_num`
- return `[]` when count is equivalent to 0
- initalize variable `multiple_arr` to an empty Array
- iterate over a range from 0 up to but not including the count
  - using each integer as index + 1 , multiply each number by the `starting_num` and push each number into the `multiple_arr`
- return the `multiple_arr`
output: array of integers

=end

def sequence(count, starting_num)
  return [] if count == 0

  (0...count).each_with_object([]) do |index, multiple_arr|
    multiple_arr << (index + 1) * starting_num
  end
end

p sequence(5, 1)       == [1, 2, 3, 4, 5]
p sequence(4, -7)      == [-7, -14, -21, -28]
p sequence(3, 0)       == [0, 0, 0]
p sequence(0, 1000000) == []