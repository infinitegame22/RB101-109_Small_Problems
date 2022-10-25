=begin
https://launchschool.com/exercises/8fa5da79

Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.




*************Problem***************************
goal: intake an array of strings and return an array of the same string values, but with the vowels (a, e, i, o,u) removed
initial input: array
overall output: array (values adjusted/mutated?)

explicit requirements:
- vowels are a, e, i, o, u


implicit requirements:
- case doesn't matter, but return with the original case
questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
%w(abcdefghijklmnopqrstuvwxyz) == %w(bcdfghjklmnpqrstvwxyz)
returns alphabet without a, e, i, o, u
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
returned without same, maintaining spaces and case

remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
if nothing left in the word, return an empty string
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
input: array

output: array
************Algorithm*************************
input: array
A. Main Method
  1. iterate over input array's word
    a. delete the vowels from the word
  2. return the transformed array
output: array

=end

def remove_vowels(array)
  array.map do |word|
    word.delete('AEIOUaeiou')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white))   == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ))              == ['BC', '', 'XYZ']