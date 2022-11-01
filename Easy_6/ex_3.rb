=begin
Fibonacci Number Location By Length

The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

Goal: return the index of the first number in the fibonacci sequence that has the input integer length
input: integer
output: integer

Rules:
- first 2 numbers are 1 in the Fibonacci sequence
- each subsequent number is the sum of the two previous numbers
- the first fibonacci number has index 1

E: 
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
               1 2 3 4 5 6 7 --> index 7 has 2 digits
find_fibonacci_index_by_length(3) == 12         
# 1 1 2 3 5 8 13 21 34 55 89 144
  1 2 3 4 5 6 7  8  9  10  11 12  

find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

D:
input: integer
intermediate: array
output: integer


A:
- intialize a 2 element array with the first two Fibonacci numbers called `fib_array`
- continue adding the last two elements of the array and pushing that sum in until the input integer converted to a string's length is equal to the input integer
- save integer input converted to string's length to a variable called `length`
- add these two elements together >> fib_array[-1] + fib_array[-2]
- push the resulting sum into the end of the `fib_array`

- return the size of the fib_array

=end

def find_fibonacci_index_by_length(index_int)
  fib_array = [1, 1]

  until fib_array[-1].to_s.length == index_int
    fib_array << fib_array[-1] + fib_array[-2]
  end
  fib_array.size
end

def find_fibonacci_index_by_length(number_of_digits)
  array = [1, 1]

  until array.last.digits.size >= number_of_digits
    array << (array[-1] + array[-2])
  end

  array.size
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847