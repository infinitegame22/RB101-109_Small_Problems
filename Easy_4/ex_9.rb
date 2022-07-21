=begin
modifying the integer
right most number is the least significant
=end

def integer_to_string(integer)
  digits = []
  if integer == 0
    return "0"
  end
  while integer > 0
    character = integer % 10 # => 4
    digits << character # => [1, 2, 3, 4]
    integer = integer/10 # => 4
  end
  new_string = ''
  digits.reverse_each {|v| new_string << v.to_s}
  new_string
end

p integer_to_string(4321) # == '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) # == '5000'