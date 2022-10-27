=begin
https://launchschool.com/exercises/8a66610c

Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.


Goal: intake an array of numbers and return the sum of adding the element at index 0 to the element at index 0 plus index 1 and so on.
input: Array
output: Integer

Rules: 
- the array will always contain at least one number
- sum is added to an accumulation of each element's sum

E: [3, 5, 2]) 
== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
    0     0   1     0   1   2
    ^     ^   ^         
    [1, 5, 7, 3]) == 
    (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)

A: 
- intialize a sum variable to 0
- iterate over the a range for the index using an index counter of some sort --> [3, 5, 2]
- add the first element to the sum variable --> sum = arr[0]
- add the first and second element together  --> temp_sum = arr[index] + arr[index + 1]
    --> store in another variable called temp_sum  
- add temp_sum plus sum and store in sum
  --> temp_sum + sum = sum
- return the sum 

=end

# test cases

def sum_of_sums(arr)
  sum = 0
  tiny_arr = []

  arr.each do |num|
    tiny_arr << sum += num # [3, 8, 10]
  end
  tiny_arr.sum
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35