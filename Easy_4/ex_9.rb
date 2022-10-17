=begin pedac
In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.



*************Problem***************************
Goal: convert input integer to a string without using to_s
initial input: positive integer or 0
overall output: string

explicit requirements:
- 
implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
integer --> array --> string
************Algorithm*************************
A. Main Method
  1. convert the string to an array of digits
  2. ireverse the array
  3. join it into a string


***********SCRATCHPAD********** 

=end

def integer_to_string(string)
  string.digits.reverse.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'