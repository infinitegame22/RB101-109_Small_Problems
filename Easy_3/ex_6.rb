# https://en.wikipedia.org/wiki/Bitwise_operation
# https://en.wikipedia.org/wiki/Exclusive_or
# integer as a series of 0's and 1's
# exclusive or will return true when the two things are different

def xor?(condition_one, condition_two)
  return condition_one != condition_two
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false