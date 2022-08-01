require 'pry'

# def sum_of_sums(array)
#   total_sum = 0
#   array.each_with_index do |number1, idx|
#     array.each_with_index do |number2, idx2|
#       total_sum += array[idx]
#     end
#   end
#   total_sum
#   #partial_sum = 0
# end

def sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
    binding.pry
  end
  sum_total
end

=begin
This problem is straightforward once I realize that I have
to keep track of two different values. One is a running total
that we'll call `accumulator`. It progressively sums up the
elements of the array.  The other is the total sum and it should 
be the value returnec by our method.  How do we comput this
`sum_total`? We need to iterate over the array: on each
iteration we update the `accumulator` and add it to the 
`sum_total`.  This is what we do in our first solution.
=end

def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

=begin
Start by initializing a variable for the total sum. Then sum
up subsets of our `numbers` array and add each of those sums
to the `sum_total` variable.

`1.upto(numbers.size)` is used to generate the correct size
for each subset of our `numbers` array. We use `number.slice
(0, count)` to get that subset, and then `reduce(:+)` is used
on the current subset to add up all its elements. Once we have
computed the final sum (one that contains all numbers in our 
array), and added that to our total sum, then we are finished.
=end
p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) #== 4
# p sum_of_sums([1, 2, 3, 4, 5]) #== 35

#Jesse's
def sum_of_sums(array)
  total = 0
  for i in 0..(array.size - 1) # loop over the index
    total += array[0..i].sum
  end
  total
end

# Greg's
def sum_of_sums(arr)
  counter = 0
  total = []

  loop do
    total << arr[0..counter].sum
    counter += 1
    break if counter >= arr.size
  end
  
  total.sum
end

# Stephen Watzman
def sum_of_sums(array)
  running_total = 0
  array.each_with_object([]) do |num, array|
    array << num
    running_total += array.sum
  end
  running_total
end

#refactored Stephen's
def sum_of_sums(array)
  array.each_with_object([0]) { |num, array| array << num + array.last }.sum
end

#Carlos Mackenzie
def sum_of_sums(array)
  sub_arrays = []
  array = array.reverse
  (0...array.size).each do |start_index|
    sub_arrays << array[start_index...array.size]
  end
  sub_arrays.map(&:sum).sum
end