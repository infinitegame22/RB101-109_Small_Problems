=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.
input: two arrays
outpus: one array
Rules: neiter argument is an empty array
Iterate through the first array, use the map method because we need to return a new
array, 

-flatten the array b/c the map method is going to return one array
- nested map for the second array
multiply every value in the first array by every value in the 2nd array
- going to iterate through

Steps: 
Initialize local variable to the return value of nested map below
- first iterate through one array using map
- iterate through second array using map
- multiply each value by current outer maps block variable value
- flatten array
- sort through flattened array, no block.
=end

def multiply_all_pairs(arr1, arr2)
  all_pairs = arr1.map do |i|
                arr2.map { |j| i*j }
              end
  all_pairs.flatten.sort
end