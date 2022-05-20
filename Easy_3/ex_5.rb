def multiply(integer1, integer2)
  return integer1 * integer2
end

def square(result)
  multiply(result, result)
end

puts square(5) == 25
puts square(-8) == 64