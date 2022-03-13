# Write a method that takes one integer argument, which may be positive, 
#negative, or zero. This method returns true if the number's absolute value
# is odd. You may assume that the argument is a valid integer value.

=begin
-P Input: One integer argument
Output: true or false - boolean
It's also important to note we may be working with positive, negative, or zero
arguments. This method determines whether the absolut value of the number is odd
and if it is returns true to the console.

Keep in mind that you're not allowed to use #odd? or #even? in your solution.
-E - 
-D - none
-A - pass an integer argument (can be positive, negative, or zero) into the method.
Call an absolute value method on the integer argument to obtain absolute value
Evaluate absolute value of integer to determine its odd or even state.
If the remainder of a number divided by two is 1, then return true. 

If odd, return true, if even return false
ie. if x % 2 == 0, then integer is even.
if x % 2 != 0, then integer is odd.
=end

def is_odd?(integer)
  return false if integer.abs % 2 == 0
  true
end


puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts

