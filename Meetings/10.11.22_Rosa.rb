=begin
https://launchschool.com/exercises/02350925
Sequence Count

Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

=begin
*************Problem***************************
Goal: 
initial input: integers
overall output: array

explicit requirements:
- array length is == first_arg
- array increments by multiples of second_arg
- if count is 0, return empty array
implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
(5, 1) == [1, 2, 3, 4, 5]
          *^  *^  
(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
A. Main Method
  1. 
  2. 
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

=begin
https://launchschool.com/exercises/02350925
Sequence Count

Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

--------------------------PROBLEM----------------------------------------
Questions:
Input: two integers
Output: an array
---------------------------RULES-----------------------------------------
Explicit: 
- array length is == first_arg
- array increments by multiples of second_arg
- if count == 0, an empty array should be returned
Implicit: 
--------------------------EXAMPLES---------------------------------------
[5,1] --> [1,2,3,4,5]
[4, -7] --> [-7, -14, -21, -28]
----------------------------ALGO----------------------------------------
- initialize an array that ranges from 0..count
  - select elements in the array that are multiples of second_arg
    - mutiples are: number % second_arg == 0
  

=end

def sequence(count, multiples_of)
  big_arr = (1..count).to_a

  big_arr.map! do |num|
    num * multiples_of
  end

  
end

# p sequence(9, 3)


p sequence(5, 1) #== [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

=begin
Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

=begin pedac

*************Problem***************************
Goal: squeeze a string down to its single instances of doubled characters wihtout using Ruby's preloaded squeeze/!.
initial input:  string
overall output: string

explicit requirements:
- no squeezing
implicit requirements:
- empty string returns empty String
- single char returns itself

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
'a' --> 'a'
'' --> ''
'gggg' --> 'g'
'ddaaiillyy ddoouubbllee' --> 'daily double'
'4444abcabccba' --> '4abcabcba'
*****
********Data Structure********************
++the steps the data takes in between input 
++and output listed above
string --> array --> string
************Algorithm*************************
A. Main Method
  1. convert string to array and iterate over array
    a. if character next to current one is same, move only current character into new string Object
    b. else next 
  2. 

***********SCRATCHPAD********** 

=end
def crunch(string)
  string_new = ''
  string.chars.reject.with_index do |char, index|
    if index < string.chars.length
      if char != string.chars[index +1]
        string_new << char
      end
    end
  end
  string_new
end
# test cases
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''


# common algorithms
# certain chunks of code seen throughout the small problems
# figure out how to grab substrings
