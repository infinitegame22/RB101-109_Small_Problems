=begin
Write a method that takes a number as an argument. If the 
argument is a positive number, return the negative of that
number.  If the number is 0 or negative, return the original
number.
input: integer
output: integer

A: in

=end

def negative(integer)
  integer.abs * -1
end

#LS solution
def negative(number)
  number > 0 ? -number : number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

# Robert Ruhlman
def negative(num)
  return 0 if num == 0
  num == num.abs ? -num : num
end

