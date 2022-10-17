=begin
Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.
=begin pedac

*************Problem***************************
Goal: intake array of numbers, output array with same number of elements, where each element is a running total from the original array

initial input: array
overall output: array

explicit requirements:
- input array has same number of elements as output array
implicit requirements:
- empty array returns empty array
- 1 number array returns itself
questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
[] --> []
[3] --> [3]
[2, 5, 13] --> [2, 7, 20]
[14, 11, 7,15, 20] --> [14, 25, 32, 47, 67]

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
array --> array
************Algorithm*************************
A. Main Method
  - create `sum` variable
  1. iterate over input array
    a. add element at first index to element at second index and save into second index
    b. 
  2. return `sum` 
  3.
B Helper Method 1
  1.
  2.
  3.
C. Helper Method 2
  1.
  2.
  3.

***********SCRATCHPAD********** 


=end

def running_total(array)
  sum = 0
  array.map {|value| sum += value}
end










def running_total(array)
  sum= 0
  array.map { |value| sum += value}
end
# # Maria Milosh
# def running_total(array)
#   (0...array.size).map {|i| array[0..i].sum}
# end

# def running_total(num_arr)
#   num_arr.inject([]) do |result, n|
#     if result.empty?
#       result << n
#     else
#       result << n + result.last
#     end
#   end
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []