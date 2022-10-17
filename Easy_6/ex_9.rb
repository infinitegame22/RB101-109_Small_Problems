=begin

https://launchschool.com/exercises/860cfef1

Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

=begin pedac

*************Problem***************************
Goal: intaking an array and integer search value and returning true if the array argument contains the integer search value, and false otherwise
initial input: array, integer
overall output: boolean object

explicit requirements:
- cannot use the Array#include? method
implicit requirements:
- an empty array will never contain the search Object

questions:
- are we dealing with strings?
*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
array, integer --> boolean object
************Algorithm*************************
A. Main Method
  1. iterate over the array Argument
    a. on each iteration, check if the element is equivalent to the integer Argument
      i. if equivalent, return true
      ii. else return false
  2. 
  3.


***********SCRATCHPAD********** 

=end
require 'pry'
def include?(array, search_value)
  array.any? do |element|
    element == search_value
    binding.pry
  end
end

p include?([1,2,3,4,5], 3)  == true
p include?([1,2,3,4,5], 6)  == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false