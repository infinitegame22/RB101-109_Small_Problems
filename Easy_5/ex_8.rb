=begin
Write a method that takes an Array of Integers between 0 and 19,
and returns an Array of those Integers sorted based on the 
English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine,
ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen,
seventeen, eighteen, nineteen

P:
input: array of integers
output: array of sorted integers

the array needs to be sorted by in alphabetical order the integer's value as an English 
word representing its numerical value. 
Real world:
convert each integer to word
sort by word first letter alphabetize
convert elements to integers
return sorted array


=end

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thireen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number]}
end

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number]}
=begin
The secret to solving this problem is to use a data structure
of some kind to map numbers to their English names.  Once I've
done this, read the docs for `Enumerable#sort_by`, and construct
a call that sorts the numbers by each number's corresponding 
English name.

Why do I think we didn't use `Array#sort_by!` instead of 
  `Enumerable#sort_by`?

For an extra challenge, rewrite my method to use `Enumerable
#sort`.
=end

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]