def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
=begin
Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

P - input: An array containing integers
output: average of all numbers in the array - integer
E - done
D - an array
A - Write a method that accepts an array as input
Add the integers of hte array to each other
divide by the number of the integers in the array
Return the answer
=end

def average(array)
  sum = 0
  index = 0
  array.each do |x|
    sum = x + sum
    index += 1
  end
  sum / index
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40