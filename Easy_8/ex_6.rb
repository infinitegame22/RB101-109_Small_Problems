=begin
Write a method that takes two arguments: the first is the
starting number, and the second is the ending number. Print
out all numbers between the two numbers, except if a number
is divisible by 3, print "Fizz", if a number is divisible 
by 5, print "Buzz", and finally if a number is divisible by
3 and 5, print "FizzBuzz".

E: fizzbuzz(1, 15) => 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz,
Buzz, 11, Fizz, 13, 14, FizzBuzz

D:

A: case statement switching between 
  options, 
=end
def fizzbuzz(start_integer, end_integer)
  result = []
  start_integer.upto(end_integer) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

=begin
THere may be a couple of things new. First, notice the case
  statment doesn't have a value next to `case` for comparison
When using a case statement in this form, we get the same 
functionality as using if/elsif/else conditional.

Another thing of interest is that there isn't anything other
than that case statement.  This works because a case state-
ment returns the value from the last line of the matched
`when` branch. For example, if a number is divisioble only by
3

Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

P - input: integer - starting and Encoding
output: list



E: 1, 2 
all multiples of 3 output 'Fizz'
all multiples of 5 output 'Buzz'
all multiples of 3 and 5 output 'Fizzbuzz'

D: Array

A: starting_integer is the first number in a set
initialize an array with the first element equal to the starting element and ending with the ending number.
iterate over the Array
  - check if number is a multiple of 3
    - if so, replace the integer with 'Fizz'
  - check if number is a multiple of  5
    - if so, replace the integer with 'Buzz'
  - if number is a multiple of 3 and 5
    - replace with the string 'FizzBuzz'
else
  returns the number to its original place in the collection
=end

def fizzbuzz(start_integer, end_integer)
  number_array = (start_integer..end_integer).to_a
  number_array.map do |element|
    if element == (element % 3 == 0 && element % 5 ==0) 
      'FizzBuzz'
    elsif element == (element % 5 == 0) # true == true, but 1 != true 
      'Buzz'
    elsif element % 3 == 0
      'Fizz'
    else
      element
    end
  end
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz