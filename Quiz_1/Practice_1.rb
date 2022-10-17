def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

=begin
Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty

=begin pedac

*************Problem***************************
Goal: intake an array integers, multiply all the elements together, divide the result by the number of elements, and print the result rounded to 3 decimal places
initial input: array
overall output: float integer

explicit requirements:
- input array is non-empty
implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
[3, 5] --> 3 * 5 = 15 /2 --> 7.500
[6] --> 6 * 1 = 1 --> 6.000
[2, 5, 7, 11, 13, 17] --> 2 * 5 * 7 * 11 * 13 * 17 / 6 --> 28361.667
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
A. Main Method
- initialize the result to 0
  1. iterate over the Array
    a. multipy each element by the next element and store in `result`
  2.  divide the result by the size of the array
  3. format the result to have 3 decimal places


***********SCRATCHPAD********** 

=end
def show_multiplicative_average(array)
  result = array.reduce(:*)
  average_float = (result.to_f / array.size.to_f)
  p "The result is #{format('%.3f', average_float)}"
end

# test cases
p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
