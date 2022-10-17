=begin
https://launchschool.com/exercises/c688f4e5

Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

=begin pedac

*************Problem***************************
Goal: intake an array of integer 0-19 and return an array sorted alphabetically sorted by the word representing the word written out in the English language, but outputs the integer array
initial input: array

overall output: array of integers

explicit requirements:

implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
(0..19).to_a) --> 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
  eight, eighteen, eleven...
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
array(of int) --> hash --> array(of int)
************Algorithm*************************
A. Main Method
  1. create a hash constant
    a. keys - Integers 0-19
    b. values - english word representation
  2. iterate over the given array object 
    a. convert each element to its associated word
    b. store result in an array
  3. sort returned array alphabetically
    a. iterate over the alphabetical and convert back into integers (iterate substituting the keys for values?)
  4. return newly alphabetically sorted integer array

***********SCRATCHPAD********** 

=end
 
INTEGERS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three',  4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}

def alphabetic_number_sort(array)
  noun_array = array.map do |element|
    element = [INTEGERS[element] , element]
  end
  noun_array.sort_by! { |x| x[0]}
  noun_array.map do |sub_arr|
   sub_arr.delete(sub_arr[0])
  end
  noun_array.flatten
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]