
#Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# find the length of the array and divide by 2
# loop over the input array 
  # if the lenght of the array is even
    # half_one = size of the array divided by 2
    # until the size of array
      # shovel the elements into array1
    # calculate the range for each half
  # else
    # until the index is less than or equal to the length
      # s

# helper method handles even or odd

def create_array_halves(array, left_size, right_size)
  nested_array = []

  nested_array << array.slice(0...left_size)
  nested_array << array.slice(left_size...right_size + left_size)

  nested_array
end

def halvsies(array)
  if array.length % 2 == 0
    create_array_halves(array, array.length / 2, array.length / 2)
  else
    create_array_halves(array, array.length/ 2 + 1, array.length / 2)
  end 
end

# def halvsies(array)
#   nested_array = []
#   if array.length % 2 == 0
#     half = array.length/2
#     nested_array << array[0...half]
#     nested_array << array[half..-1]
#   else
#     half = array.length/2
#     nested_array << array[0..half]
#     nested_array << array[half+1..-1]
#   end
# end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]