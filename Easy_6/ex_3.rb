=begin
Fibonacci Number Location By Length

The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

Amy's version:
Intake the number of digits in the Fibonacci number and return 
the index of the number in the collection of Fibonacci numbers.
The first number in the set has an index of 1.

Input - integer
Output - integer

E: find_fibonacci_index_by_length(2) == 7
Fibonacci series => (1, 1, 2, 3, 5, 8, 13)
              index 1^ 2 ^ 3^ 4^ 5^ 6^  7^

D:

A: fibonacci series is an array (how do i initialize fibonacci 
series?)
add 1 to the index to return the Fibonacci index

recursive Fibonacci number array
 - breaking something down until it hits a specific base case
 - mini calls go back to their parents 

 while loop over fibonacci(n)
    - always get a return value, check to see if it has the number of digits
    - 
create an array
  - loop and add results to array
  - find something with the length I want and look up its index
  - 
  
=end

def fibonacci(n)
  n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 ) 
end

p fibonacci(2)

# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# Jacob

def find_fibonacci_index_by_length(number_of_digits)
  sequence = [1, 1]

  until sequence.last.digits.size >= number_of_digits
    sequence << sequence.last(2).sum
  end

  sequence.size
end
