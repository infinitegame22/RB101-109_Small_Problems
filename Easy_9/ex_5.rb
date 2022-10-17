=begin
=begin pedac

*************Problem***************************
Goal: method takes a string argument, and returns true if all
of the alphabetic characters in the string are uppercase, false
otherwise. Ignore non alphabetic characters 
initial input: string 
overall output: boolean value

explicit requirements:
- ignore non alphabetic characters
- return true if all characters are capitalized
implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
't' --> false, not uppercase
'T' --> true, uppercase
'Four Score' --> false, not enough uppercase
'FOUR SCORE' --> true, all uppercase
'4SCORE!' --> true, all uppercase
'' --> true, empty
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
A. Main Method
  1. check if all of the letters in the string are uppercase
  2. 
  3.

***********SCRATCHPAD********** 

=end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true