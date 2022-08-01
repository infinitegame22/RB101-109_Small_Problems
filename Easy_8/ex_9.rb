=begin
Write a method that takes a positive integer and returns
that number with its digits reversed.

Don't worry about arguments with leading zeros. Ruby sees those
as octal numbers, which will cause confusing results. For
similar reasons, the return value for our fourth example
doesn't have any leading zeros.

E: 12345 == 54321
12213 == 31221

D: 

A: convert the number to a string
then `String#reverse` to reverse the string, and then use 
`String#to_i` to get the final result.
=end
def reversed_number(integer)
  integer.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

# Richard's
def reversed_number(num)
  num.digits.map(&:to_s).join.to_i
end

# refactored
def reversed_number(num)
  num.digits.inject(0) {|sum, num| sum = sum*10 + num}
end

