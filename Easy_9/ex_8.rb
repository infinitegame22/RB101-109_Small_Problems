=begin
Create a method that takes two integers as arguments. The
first argument is a count, and the second is the first 
number of a sequence that my method will create. The method
should return an array that contains the same number of
elements as the count argument, while the values of each
element will be multiples of the starting number.

Assume that the count argument will always have a value of
0 or greater, while the starting number can be any integer
value.  If the count is 0, an empty list should be returned.

GOAL:
- give the method a range 
  - the first integer gives the amount of elements in the array
  - the second integer indicates 

Requirements:
- 

input: two integers
output: array


=end
#LS solution 1
def sequence(count, first)
  sequence = []
  number = first # number => 1

  count.times do # => 5.times do
    sequence << number # => [1, 2]
    number += first # => number = number + first => 1 + 1 => 2
  end

  sequence
end

# LS solution 2
def sequence(count, first)
  (1..count).map { |value| value * first }
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

=begin
In the first solution, we begin by setting the scene. We
initialize a `sequence` variable as an empty array and a
`number` variable that we set to the value of `first`, as
it will be the first element of the sequence.

We then use the `Integer#times` method. It will execute
the content of the block the number of times specified by
the integer. 
=end