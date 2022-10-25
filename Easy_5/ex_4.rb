=begin pedac

*************Problem***************************
Goal: intake a string and output the string in which the first and last letters are swapped
initial input: string
overall output: string

explicit requirements:

implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
'Oh what a wonderful day it is' --> 'hO thaw a londerfuw yad ti si'
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
A. Main Method
  1. swap the first character with the last character
  2. return the new string
  3.


***********SCRATCHPAD********** 

=end

def swap_first_last_characters(word)
  string[0], string[1] = string[1], string[0]
end

