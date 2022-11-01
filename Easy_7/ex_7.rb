=begin
Write a method that takes an array of integers
as input, multiplies all numbers together, divides
the result by the number of entries in the array,
and then prints the result rounded to 3 decimal 
places. Assume the array is non-empty.
input; array
output: float

E: [3, 5] => 3 * 5 = 15 / 2 = 7.500
[6] => 6  = > returns itself --> element * the size of the array
[2, 5, 7, 11,13, 17] => 2 * 5 * 7 * 11 * 13 * 17 / 6 => 28361.667

D: array element multiplication and division
input; array
intermediate: 
output: float
A: 
- iterate over the input array
  - multiply every element by each element >> arr[0] * arr[1] * arr[2]...
  - save the result into a variable called product
  - divide the product by the size of the array
  - return in float form with 3 digit places
=end

# def show_multiplicative_average(array)
#   "The result is #{array.sum.to_f / array.size}"
# end

# def show_multiplicative_average(arr)
#   product = arr.reduce(:*)
#   product = product.to_f/arr.size
#   product = product.round(3)
# end

# p show_multiplicative_average([3, 5])                # => The result is 7.500
# p show_multiplicative_average([6])                   # => The result is 6.000
# p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

def show_multiplicative_average(numbers)
  product = numbers.reduce(:*).to_f
  average = product / numbers.size
  puts "The result is #{format('%.3f', average)}"
end

# def show_multiplicative_average(numbers)
#   product = 1.to_f
#   numbers.each { |number| product *= number }
#   average = product / numbers.size
#   puts "The result is #{format('%.3f', average)}"
# end

def show_multiplicative_average(array)
  average = array.inject(:*).fdiv(array.size)
  "The result is #{format('%.3f', average) }"
end

def show_multiplicative_average(number_array)
  numerator = number_array.inject(:*)
  denominator = number_array.size
  average = (numerator/denominator.to_f).round(3)
  puts "The average is #{average}"
end

def multiplication(array)
  sum = 1
  result = array.each do |num|
    sum *= num
  end
  sum
end

def show_multiplicative_average(array)
  division_sum = multiplication(array) / array.size.to_f
  division_sum.round(3)
end

def show_multiplicative_average(arr)
  result = (arr.inject(:*).to_f/arr.size)
  format('%.3f', result)
end

def show_multiplicative_average(array)
  "The result is #{format("%.3f", (array.inject(:*))/array.size.to_f)}"
end

def show_multiplicative_average(arr)
  avg = arr.reduce(:*) / arr.size.to_f
  p "The result is %.3f" % average
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667