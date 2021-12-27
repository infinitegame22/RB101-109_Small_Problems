def is_odd?(integer)
  integer = integer.abs
  
  if integer % 2 == 0 
    return false
  else
    return true
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

#LS answer
#def is_odd?(number)
  #number % 2 == 1 -predicate version
#end