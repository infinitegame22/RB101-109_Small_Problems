=begin
Write a method that takes an integer argument, and returns
an array of all integers, in sequence, between 1 and the
argument.  The argument will always be a valid integer that
is greater than 0.

GOAL: write a method that takes an integer as an argument
and returns an array of all the integers from 1 to the 
argument integer.

input: integer
output: array

Requirements:
-argument will always be a valid integer greater than 0

E: 5 => [1, 2, 3, 4, 5]

D: array

A: create a range from 1 to the integer argument
convert it to an array
=end
def sequence(integer)
  if integer >= 1
    (1..integer).to_a
  else
    (integer..1).to_a
  end
end

# JD
def sequence(num)
  num > 0 ? (1..num).to_a : (num..1).to_a
end

# Carlos'
def sequence(number)
  number > 0 ? 1.upto(number).to_a : (number).upto(1).to_a
end

# Franco
def sequence(number)
  return [] if number == 0
  number > 0 ? (1..number).to_a : (number..-1).to_a
end

#Garrett Gratts
def sequence(integer)
  integer > 0 ? (1..integer).to_a : (integer..1).to_a.reverse
end


p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-1)