=begin pedac
n the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.
*************Problem***************************
Goal: write a method that takes the string of digits, and returns the appropriate number as an integer.
initial input: string
overall output: integer with a `+` or `-`

explicit requirements:
- if the string has a + in front of it return a positive number
- if the string has a - in front of it return a negative number
implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
input: string
intermediate: case statement
output: integer
************Algorithm*************************
A. Main Method
  1. intake a string and pass it to the string_to_integer method
  2. if the intake string has a `-` in front of it return the integer with a `-` in front of it
  3. else just return the integer

***********SCRATCHPAD********** 

=end

def string_to_integer(string)
  int_array = string.chars.map(&:to_i)
  power = 0
  result = 0
  int_array.reverse.each do |int| 
    result += int * 10**power
    power += 1
  end
  result
end

def string_to_signed_integer(string)
  integer = string_to_integer(string)

  string[0] == '-' ? -integer : integer
end

# LS solution
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100