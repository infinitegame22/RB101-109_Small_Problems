# =begin
# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.
# =end

# # Launch school answer

# def reverse(array)
#   result_array = []
#   array.reverse_each { |element| result_array << element }
#   result_array
# end

=begin

input: Array
output: Array with elements reversed

data structure:
elements will be stored in a new Array

algorithm:
- initialize a new array variable
- until the input array is empty
- remove the last element of the input array 
- add it to the new array 
- return the new array
=end

def reverse(input_array)
  input_array.inject([], :unshift)
end 

p reverse([1,2,3,4]) # == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) # == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true




#   #https://ruby-doc.org/core-3.0.2/Array.html#method-i-fetch
#   # Returns the element at offset index
#     # - What is the difference between an index and an offset?
#      # - an index is absolute, an offset is relative (to some
#      # some other position). All examples given so far use arrays
#      # or structs or memory but I can also look at graphics.

# # https://ruby-doc.org/core-2.6/Enumerable.html#method-i-reverse_each
# # builds a temp array and traverses that array in reverse order

def reverse(array)
  n = array.length
  (0..n/2).map do |index| # round down , 0 -2 
    temp = array[index] # => left side = > 1 storing it because we are modifying
    array[index] = array[n - index - 1]  # = > right side 1 = 4 => [1, 2, 3, 4]
    array[n - index - 1] = temp # => [4,2,3, 1]
  end
end


p reverse([1,2,3,4])# == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) #== %w(c d e b a)  # => true
p reverse(['abc']) #== ['abc']              # => true
p reverse([])# == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true