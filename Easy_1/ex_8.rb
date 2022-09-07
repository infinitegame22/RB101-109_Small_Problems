=begin
Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the
numbers will always be positive integers. Result should also be an integer.

input - array containing integers
output - integer

E: [1, 6] == 3 # integer division: (1 + 6) / 2 -> 3
[1, 5, 87, 45, 8, 8] == 25 # integer division (1 + 5 + 87 + 45 + 8 + 8) / 6 => 25
[9, 47, 23, 95, 16, 52] == 40 # (9 + 47 + 23 + 95 + 16 + 52) / 6 => 40

D: array -> variables for multiplication -> integer

A: initialize sum variable
iterate over the array
  - add each element to the sum total
  - divide the sum by the count of integers in the array
  - store average 
  - return average

=end

def average(array)
  sum = 0
  average = 0

  array.each do |element|
    sum += element
    average = sum / array.length
  end
  average
end

# LS solution
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number } # => aka number.reduce(:+)
  sum.to_f / numbers.count
end

puts average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40