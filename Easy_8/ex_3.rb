=begin

https://launchschool.com/exercises/8bbbc072

Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

*************Problem***************************
Goal: Return a list of all substrings of a given string that start at the beginning of the input string, so from index 0 to every other element and return it sorted from shortest to longest substring in an array object
initial input: string
overall output: array of the substrings

explicit requirements:
- sort the array from shortest to longest
- return all substrings from index 0 to each index of the String
implicit requirements:
- if it's a one letter string, return self
questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
('abc') == ['a', 'ab', 'abc']
            0,    0-1,  0-2 --> string is only 3 letters
leading_substrings('a') == ['a']
1 letter returns self
leading_substrings('xyzzy') ==
 ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
  0   , 0-1, 0-2,     0-3,   0-4 --> string only 5 letters
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
input: String
intermediate: storage array for all the substrings, which eventually we return
output: array
************Algorithm*************************
A. Main Method
input: String
  1. intialize substring_array to an empty array
  2. iterate over a range (index) starting at index 0 and going until the last letter of the string (string.size - 1)
    a. on each iteration, store the character from index 0 to current index in the substring_array
      i. ie iteration 1, index 0 for 'xyzzy' is 'x' >> ['x']
      ii. iteration 2 from index 0 to current index (1) of string pushes new substring into the substring_array
      iii. and so on. 
  3. return substring_array

***********SCRATCHPAD********** 

=end

def leading_substrings(string)
  substring_array = []

  (0...string.size).each do |index|
    substring_array << string[0..index]
  end

  substring_array
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']