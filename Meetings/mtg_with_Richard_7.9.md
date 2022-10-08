require 'pry'
# Raggle raggle raggle, I can't seee ya 

=begin 
Given an array of integers, return indices of the two numbers, such that they add up to a specific target. 

Input: array, Integer
Output: Array

Requirements: 

Explicit - each input has exactly one solution
        - may not use same element twice

Implicit - 

E - sum_finder([9, 4, 1, 6, 2, 3], 8) == [3, 4] => index 3 = 6, index 4 = 2

  - sum_finder([-3, 6], 3) == [0, 1] => input of negative number is possible. 

D - array

A - initialize empty array
iterate over the input array
add integer at index 0 to second integer at index 1 - does this equal the input integer? 
  IF no, then move on to third integer and add to integer at index 1 - does this sum equal the input integer?

  ELSE, add the indices of the two numbers that add up to the input integer in initialized Array
  RETURN new array

  Does select offer an option here for us to choose the two integers whose sum is equal to input integer?
    - ie index0 + index1 == input, passed into the block somehow



You may assume that each input would have exactly one solution, and you may not use the same element twice. 


Implementation Details:

I want Ruby to start at index 0 and add each integer in subsequent indices to be added 1 at a time to see if the sum is equal to the input integer.
If sum is not found to match this first iteration then move onto integer at index 0 and start over on the computation, ie index 1 + index 2 does this equal input integer and so on.
Break when two integers from array are found and their sum is equal to input integer. 
Return array with indices of these two integers.

Input Integer: Target
Iterate over the numbers in the list of integers, current number.
  Iterate over the numbers that come after the current number, later number. 
    If the sum of the later number and the current number is equal to the target, then 
      Break out of the loop 

Return the index of the current number and later number
=end 

# Variable Scope 
# OUTER SCOPE - 
# Initialize current_num_index and a later_number_index to `nil`
# BEGIN INNER SCOPE 
# Iterate over the numbers in the list of integers, current number & curr_num_index 
#  Iterate over the numbers that come after the current number, later number. 
#    If the sum of the later number and the current number is equal to the target, then 
#      Break out of the loop 
# END INNER SCOPE 
# Return the index of the current number and later number
# END OUTER SCOPE 

def sum_finder(integers, target) # [1] 
  # OUTER SCOPE - integers, target 
  current_num_index = nil 
  later_number_index = nil 
  
  # OUTER LOOP 
  integers.each_with_index do | curr_num, curr_num_index | 
    current_num_index = curr_num_index
    sum = 0
    (curr_num_index + 1..integers.size).each do | later_num_index | 
      later_number_index = later_num_index
      later_num = integers[later_num_index] 

      sum = curr_num + later_num if later_num 
      if sum == target 
        return [curr_num_index, later_num_index]
      end 
    end 
  end 
end 

p sum_finder([9, 4, 1, 6, 2, 3], 8) == [3, 4]
p sum_finder([1, 0, 1], 2) == [0, 2]
p sum_finder([0, 2], 2) == [0, 1]
p sum_finder([8, 2, 11, 15, 7], 9) == [1, 4]
p sum_finder([-3, 6], 3) == [0, 1]
p sum_finder([0, 1, 2, 3, 6], 5) == [2, 3]
p sum_finder([9, 4, 1, 6, 4], 8) == [1, 4]
p sum_finder([0, 4], 4) == [0, 1]
p sum_finder([4, 3, 5], 8) == [1, 2]

def sum_finder(integers, target) 
  integers.each_with_index do |num, index|
    complement = target - num 
    
    integers.each_with_index do |num, complement_idx|
      next if num != complement # Richard says "Next!"

      return [index, complement_idx] if complement_idx > index  
    end
  end
end 