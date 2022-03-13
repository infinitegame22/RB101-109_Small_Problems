=begin
P - Input: One integer argument - pos., neg, or zero
Output: boolean

E - below
D - if/else conditional
A - Pass an integer into the method as an argument
CHeck integer for value - negative or positive
  - if < 0, adjust to positive by multiplying by -1
Check if integer is odd by comparing to x % 2 != 0.
  -IF odd return true
  - ELSE return false
Check algorithm by walking through examples.
C - 

=end

def is_odd?(integer)
  if integer < 0
    integer = integer * -1
  end
  if integer % 2 != 0
    true
  else
    false
  end
end
  

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true