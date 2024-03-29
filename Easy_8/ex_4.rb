=begin
Write a method that returns a list of all substrings of a string.
The returned list should be ordered by where in the string 
the substring begins.  This means that all substrings that 
start at position 0 should come first, then all substrings
that start at position 1, and so on. Since multiple sub-
strings will occur at each position, the substrings at a
given position should be returned in orde from shortest to
longest.

Use the `leading_substrings` method
=end


=begin

All Substrings

Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

Goal: intake a string and return a list (array) of all possible substrings of that string.  The array returned should be sorted based on the index position of the beginning letter of the substring and then from shortest to longest.

input: String
output: Array

Rules:
- returned array needs to be sorted by the index position of each starting letter of each substring (0-) and then shortest to longest sorting of the substrings made from that Index
- only lowercase letters

D:
input: String
intermediate: Array
output: Array

A:
- intialize variable `substrings` to an empty Array
- iterate over a range from 0 upto but not including the size of the String `st_idx`
  - iterate over a range from current element up to but not including the size of the String `end_idx`
    - using the st_idx upto and including the end_idx, slice the substrings from the input string and push them into the array object substrings
- return the substrings array

=end

def substrings(string)
  substrings = []
  0.upto(string.size-1) do |st_idx|
    st_idx.upto(string.size-1) do |end_idx|
      substrings << string[st_idx..end_idx]
    end
  end
  substrings
end

p substrings('abcde') #

def leading_substrings(string)
  result =[]
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  result =[]
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    result.concat(leading_substrings(this_substring))
  end
  result
end

p substrings('abcde') #== [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

=begin
This problem is a lot easier if you use the `leading_substrings` method from the 
previous exercise. Without that method, it can be really hard to wrap my head
around the requirments and come up with a working solution.

The solution boils down to just repeatedly running `leading_substrings` on in-
creasingly smaller substrings of `string`, starting with the 1st character,
then the 2nd character, and so on. The results are all concatenated to our `result`
array which is subsequently returned to the caller.

Our `leading_substrings` method returns substrings in order from shortest to
longest, and `substrings`itself works from left to right in the string. 
=end

# Richard
#with index
def leading_substrings(string)
  string.chars.map.with_index { |_, i| string[0..i]}
end

# Initial
def substrings(str)
  substrings_arr = []
  for i in (0...str.chars.size) do
    substrings_arr << leading_substrings(str[i..])
  end
  substrings_arr.flatten
end

def substrings(str)
  str.chars.map.with_index {|_, i| leading_substrings(str[i..])}.flatten
end