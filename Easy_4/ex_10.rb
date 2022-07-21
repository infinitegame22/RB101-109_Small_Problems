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

def signed_integer_to_string(integer)
  if integer == 0
    return "0"
  end
  integer > 0 ? '+' + integer_to_string(integer) : '-' + integer_to_string(integer * -1)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'