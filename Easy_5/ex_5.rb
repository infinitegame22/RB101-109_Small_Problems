=begin

https://launchschool.com/exercises/28ff0d86

Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

*************Problem***************************
initial input: string
overall output: mutated string

explicit requirements:
- replace non-alphabetic chars with space
- one or more characters occur in a row, only replace with only one space


implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
("---what's my +*& line?") == ' what s my line '
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
string --> string
************Algorithm*************************
A. Main Method
  1. convert string to an array of characters
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
=end

def cleanup(string)
  string.gsub(/[[:punct:]]/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '

p cleanup("?/I wish@ I was a baller!") == ' I wish I was a baller '





# /[[:alnum:]]/ - Alphabetic and numeric character

# /[[:alpha:]]/ - Alphabetic character

# /[[:blank:]]/ - Space or tab

# /[[:cntrl:]]/ - Control character

# /[[:digit:]]/ - Digit

# /[[:graph:]]/ - Non-blank character (excludes spaces, control characters, and similar)

# /[[:lower:]]/ - Lowercase alphabetical character

# /[[:print:]]/ - Like [:graph:], but includes the space character

# /[[:punct:]]/ - Punctuation character

# /[[:space:]]/ - Whitespace character ([:blank:], newline, carriage return, etc.)

# /[[:upper:]]/ - Uppercase alphabetical

# /[[:xdigit:]]/ - Digit allowed in a hexadecimal number (i.e., 0-9a-fA-F)
