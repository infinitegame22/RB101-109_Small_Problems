=begin pedac
Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

Your solution should not mutate the input arrays.
*************Problem***************************
Goal: build the result one element at a time
initial input: 2 arrays
overall output: 1 array

explicit requirements:
- array are already sorted
- already know next lowest number
implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
  ^          ^        1>> result
     ^                2 >> result
                ^     5 >> result
        ^             6 >> result
                   ^  8 >> result
                      9 >> result
one index variable per list
looping over list once

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
array --> array
************Algorithm*************************
A. Main Method
  1. intializing index1 to 0 and index2 to 0 local variables to keep track of current index
  2. iterate over the lists while index1 <= array1.size AND index2 <= array2.size
    a. starting at index 0 in both arrays, compare the elements
      i. if arr1[0] >= arr2[0]
        - push arr2[0] >> result
        - increment index 2
      ii. else push arr1[0] >> result
        - increment index1
3. return result

***********SCRATCHPAD********** 

=end

def merge(arr1, arr2)
  result = []

  index1 = 0
  index2 = 0 

  while index1 < arr1.size && index2 < arr2.size
    if arr1[index1] >= arr2[index2]
      result << arr2[index2]
      index2 += 1
    else
      result << arr1[index1]
      index1 += 1
    end
  end

  while index1 < arr1.size
    result << arr1[index1]
    index1 += 1 
  end

  while index2 < arr2.size
    result << arr2[index2]
      index2 += 1
  end

  result
end


p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]