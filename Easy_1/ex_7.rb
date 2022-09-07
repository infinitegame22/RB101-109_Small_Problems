=begin
Write a method that takes one argument, a positive integer, and returns a string
P:
input: integer
output: string

Requirements:
- string must be alternating 1s and 0s, always starting with 1.
- length of the output string should match the given integer

E:
stringy(8) --> '10101010'

D: integer --> string

A: create an empty string
use the integer as the count
for each odd number in the count, add a '1' to the string
for each even number in the count, add a '0' to the string
return string

=end

def stringy(integer)
  binary_string = ''
  (1..integer).each { |i| i.odd? ? binary_string += '1' : binary_string += '0' }
  #   if i.odd?
  #     binary_string += '1'
  #   else
  #     binary_string += '0'
  #   end
  # end
  binary_string
end

puts stringy(6) #== '101010'
puts stringy(9) #== '101010101'
puts stringy(4) #== '1010'
puts stringy(7) #== '1010101'

# Further exploration

def stringy(integer, start_integer=1)
  binary_string = ''
  if start_integer == 0
    (1..integer).each { |i| i.odd? ? binary_string += '0' : binary_string += '1'}
  else
    (1..integer).each { |i| i.odd? ? binary_string += '1' : binary_string += '0' }
  end
  binary_string
end


puts stringy(6, 0) #== '010101'
puts stringy(9, 0) #== '010101010'
puts stringy(4) #== '1010'
puts stringy(7) #== '1010101'
