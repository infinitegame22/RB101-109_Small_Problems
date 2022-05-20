=begin
input - Array of number
outs - Array with same number of elements
aka prefix sum
part of solving a problem
imagine a giant array, and want to know sums at given points
pre-computing it 
Loop over the original array
then add it 
variable i = index
=end

def running_total(array)
  i = 1
  output_array = []

  if array == [] # guard clause
    return output_array
  end
  output_array << array[0]

  while i < array.size
    current_element = array[i]
    output_array << current_element + output_array[i-1]
    i += 1  
  end
  output_array 
end

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end


puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []