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


=end

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    index = 2

    loop do
      index += 1
      fibonacci = first + second
      break if fibonacci.to_s.size >= number_digits

      first = second
      second = find_fibonacci_index_by_length
    end

    index
end

=begin
We'll take the brute force approach for this solution; it's the
easiest form to both understand and write. 

We start by setting the first 2 numbers, `first` and `second`, to
` in accordance with the series definition. We start our index at
2since we now hat the 2nd Fibonacci number in `second`. 

We then begin iteration through the numbers, exiting the loop 
when we finally encounter a Fibonacci number of the correct
size (note that we check whether the result is >= the required
number of digits; the > part of this comparison will probably
never be true, but it's safer to ensure that we don't end up
in an infinite loop, just in case there are no numbers with
the exact number of digits we want).

During each iteration, we first increment our index, then compute
the newest number in the sequence by adding the last 2 numbers 
together. After checking for the desire result, we then replace
`first` and `second` with the pair of numbers that will be used 
in the next calculation.

Finally, we return our `index`; this is the index of the first 
Fibonacci number with `number_digits` digits.


=end

# Lucas' solution

def find_fibonacci_index_by_length(number_of_digits)
  fibonacci_numbers = [1, 1]

  counter = 1
  loop do
    break if fibonacci_numbers.last.digits.size == number_of_digits

    fibonacci_numbers << fibonacci_numbers[counter] + fibonacci_numbers[counter - 1]

    counter += 1
  end

  fibonacci_numbers.size
end

# Oliver Shaw's solution

def find_fibonacci_index_by_length(length)
  arr = [1, 1]
  fib_array = []

  until fib_array.last.to_s.size == length
    arr[2] = arr[0] + arr[1]
    fib_array << arr.shift
  end
  index = fib_array.rindex(fib_array.last) + 1
end

# Bethany's solution

def find_fibonacci_index_by_length(num_of_digits)
  index = 2
  penulatimate, last = 1, 1

  until last >= 10**(num_of_digits - 1)
    newest = penultimate + last
    penultimate, last = last, newest
    index += 1
  end

  index
end

# Richard Lee's solution

def find_fibonacci_index_by_length(length)
  index = nil
  # Fibonacci sequence starts iwth 1, 1
  prev_num = 1
  curr_num = 1
  index_curr_num = 2
  # generate sequence until length of digits is met
  loop do
    next_num = prev_num + curr_num
    prev_num = curr_num
    curr_num = next_num
    index_curr_num += 1
    break if curr_num.to_s.size >= length
  end
  # return the index number
  index_curr_num
end

# richard Vu's solution

def find_fibonacci_index_by_length(desired_fib_size)
  fib_one = 8
  fib_two = 13
  index_fib_two = 7
  size_fib_two = 2

  while size_fib_two < desired_fib_size
    index_fib_two += 1
    fib_one, fib_two = fib_two, (fib_one+fib_two)
    size_fib_two = fib_two.to_s.size


find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

=begin
PEDAC
Write a method that returns the index of the first Fibonacci number that has the number of digits specified as an Argument.

input: Integer
output: Integer

Requirements:
- Fibonacci first number has index 1
- what if the integer entered does not match the Fibonacci number digits?
- whole integers
- the argument is always greater than or equal to integer 2

E -

find_fibonacci_index_by_length(2) == 7
1 1 2 3 5 8 13

find_fibonacci_index_by_length(3) == 12
1 1 2 3 5 8 13 21 34 55 89 144

D - Array

A -
initialize an object to hold the fibonacci numbers
how to find fibonacci numbers
  - add the first number to the second number and that equals the third number in the sequence
  - 1 + 1 =2 # => [1, 1, 2]
  - add the last two elements of the collection and add the sum to the collection as the last element
  -the given integer determines the size of the number in the sequence, so we don't need to build the array further than the integer indicating the length of the number in digits.
Check the last number of the collection 
  - does it match the integer in digits?
  - how do I count the digits in an integer?
  - IF true, then return the integer(position in sequence)
  - ELSE continue checking the array for the integer number of digits.


=end
# array = [1, 1, 2]
def build_fibonacci_arr!(array)
  array << array[-1] + array[-2]
end

def find_fibonacci_index_by_length(integer)
  return 1 if integer == 1
  fibonacci_arr = [1, 1, 2]
  loop do
    build_fibonacci_arr!(fibonacci_arr) #=> [1, 1, 2, 3]
    if fibonacci_arr.last.to_s.length == integer
      return fibonacci_arr.count
    end
  end
end

def find_fibonacci_index_by_length(integer)
  fibonacci_arr = [1, 1, 2]
  loop do
    fibonacci_arr << fibonacci_arr[-1] + fibonacci_arr[-2]  #=> [1, 1, 2, 3]
    if fibonacci_arr.last.to_s.length == integer
      return fibonacci_arr.count
    end
  end
end

p find_fibonacci_index_by_length(1)
p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10)# == 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847
p find_fibonacci_index_by_length(100000) #== 478498?


## second problem: write out a program that determines if, in the sequence of fibonacci numbers, the number of digits