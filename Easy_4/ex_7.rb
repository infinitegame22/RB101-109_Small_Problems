=begin

The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

=begin pedac

*************Problem***************************
Goal: write my own `to_i` method
initial input: string of digits
overall output: integer

explicit requirements:

implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
string_to_integer('4321') == 4321
string_to_integer('570') == 570
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
string --> array --> integer
************Algorithm*************************
A. Main Method
  1. convert string to an array of characters
  2. iterate over array and 
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
# def string_to_integer(string)
#   int_array = string.chars.map(&:to_i)
#   power = 0
#   result = 0
#   int_array.reverse.each do |int| 
#     result += int * 10**power
#     power += 1
#   end
#   result
# end

# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570

DIGITS = { 'a' => 10 , 'b' => 11, 'c' => 12, 'd'=> 13, 'e' => 14, 'f' => 15}

# def hexadecimal_to_integer(string)
#   power = 0
#   result = 0

#   int_array = string.chars.map do |char|
#     char = char.downcase
#     if DIGITS.key?(char)
#       char = DIGITS[char]
#     else
#       char.to_i
#     end
#   end
#   int_array.reverse.each do |int| 
#     result += int * (16 ** power)
#     power += 1
#   end
#   result
# end


# p hexadecimal_to_integer('4D9f') == 19871

def binary_to_integer(string)
  int_array = string.chars.map(&:to_i)
  power = 0
  result = 0
  int_array.reverse.each do |int| 
    result += int * 2**power
    power += 1
  end
  result
end

p binary_to_integer('1010') == 10
p binary_to_integer('10000000') == 128