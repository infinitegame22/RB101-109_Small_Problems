=begin

https://launchschool.com/exercises/4a28f116

Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.
=begin pedac

*******
******Problem***************************
Goal: Intake two arrays and return an 1 array with the same amount of elements, but each element is a product of the elements in the input arrays at the same index.
initial input: two arrays
overall output: one product array

explicit requirements:
- the arguments contain the same number of elements
- multiply the elements together that are at the same index


implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
  ^          ^
  array1[0] * array2[0] = array3[0]
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
input: two arrays
intermediate: storage array for the products
output: one product array
************Algorithm*************************
A. Main Method
input: two arrays
- initialize product_array to be empty array
  1. iterate over array1 keeping track of the index
    a. multiply current indexed element by same indexed element of array2
    b. push product result into product_array
  2. return product_array

=end
def multiply_list(arr1, arr2)
  product_array = []
  arr1.each_with_index do |el, idx|
    product_array << el * arr2[idx]
  end
  product_array
end

# Chris 
def multiply_list(arr1, arr2)
  index = 0
  product_array = []

  loop do 
    product_array << (arr1[index] * arr2[index])
    index += 1
    break if index == (arr1.length)
  end
  p product_array
end

#Amy
def multiply_list(arr1, arr2)
  product_array = []
  
  arr1.each_with_index do |ele, idx|
    product_array << ele * arr2[idx]
  end

  product_array
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]