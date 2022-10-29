=begin 
A Rational Number is any number that can be represented as the result of the division between two integers, e.g., 1/3, 3/2, 22/7, etc. The number to the left is called the numerator, and the number to the right is called the denominator.

A Unit Fraction is a rational number where the numerator is 1.

An Egyptian Fraction is the sum of a series of distinct unit fractions (no two are the same), such as:
1   1    1    1
- + - + -- + --
2   3   13   15

Every positive rational number can be written as an Egyptian fraction. For example:
    1   1   1   1
2 = - + - + - + -
    1   2   3   6

     Write two methods: one that takes a Rational number as an argument, and returns an Array of the denominators that are part of an Egyptian Fraction representation of the number, and another that takes an Array of numbers in the same format, and calculates the resulting Rational number. You will need to use the Rational class provided by Ruby.

     https://r-knott.surrey.ac.uk/Fractions/egyptian.html#section3.1

     A:
- intialize `result` variable to an empty array
- initialize `counter` variable to integer 1
- until the sum of the `result` array is equivalent of the input `rational` >> until 2 == 2
  - initialize variable `sample` to the output of `Rational` class passed two arguments 1 and the integer referenced by `counter` (which increments on every loop)
  - push `sample` fraction into `result` array if `sample` added to the sum of the `result` array is less than or equal to the `rational` input
  - increment the counter by 1
- iterate over the `result` array and transform the elements to the denominators only
- return the denominators array
=end
# marcos'
def egyptian(rational) # Rational(2, 1) == 2
  result = []
  counter = 1
  until result.sum == rational
    sample = Rational(1, counter)
    result << sample if sample + result.sum <= rational
    counter += 1
  end
  result.map { |num| num.denominator }
end

def unegyptian(array)
  array.map { |num| Rational(1, num) }.sum
end