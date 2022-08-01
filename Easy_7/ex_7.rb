=begin
Write a method that takes an array of integers
as input, multiplies all numbers together, divides
the result by the number of entries in the array,
and then prints the result rounded to 3 decimal 
places. Assume the array is non-empty.
input; array
output: float

E: [3, 5] => 3 * 5 = 15 / 2 = 7.500
[6] => 6  = > returns itself
[2, 5, 7, 11,13, 17] => 2 * 5 * 7 * 11 * 13 * 17 / 6 => 28361.667

D: array element multiplication and division

A: each element of the array is its own integer
multiply each integer times the next one
iteration? num * num = num * num and so on
initialize variable and assign it the value of the division by the number of elements in array
initialize variable and set it equal
return the number
=end

# def show_multiplicative_average(array)
#   "The result is #{array.sum.to_f / array.size}"
# end

def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{format('%.3f', average)}"
end

=begin
We could use `Enumerable#inject` to compute the 
product, but for simplicity, we use `#each` instead.
Once we have the desired product, we caluculate
the multiplicative average and format it with three
decimal places.
=end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667