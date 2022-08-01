=begin 
Find missing numbers - Write a method that takes a sorted array of integers 
# as an argument, and returns an array that includes all of the missing integers (in order)
# between the first and last elements of the Argument

# INPUT: Array of Integers (sorted)
# OUTPUT: Array of Integers

# - If none missing, return an empty Array
# - A missing integer is an integer that is needed to complete a numeric sequence of integers

=end
# missing([1, 5]) == [2, 3, 4]
# (first..last)
# missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
# [-3, -2, -1, 0, 1, 2, 3, 4, 5]


# ALGORITHM:
# - Find a range that starts at the first element of the input array and ends at the last element of the input Array
# - Convert that range to an array (complete_array)
# - Iterate over the complete_array
#  - Check against the input Array
#  -  If current_element is included in input 
#   - Change it to `false`
#  - Remove `false` from the modified complete Array
# - Return modified complete Array


# def missing(nums)
#   complete_array = (nums.first..nums.last).to_a 
#   complete_array.map! do |n|
#     nums.include?(n) ? false : n
#   end
#   complete_array.delete(false)
#   complete_array
# end



# p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
# p missing([1, 2, 3, 4]) == []
# p missing([1, 5]) == [2, 3, 4]
# p missing([6]) == []




# input -> an array of sorted integers
# output -> an array containing all integers that are missing from the range of the initial array

# Goal
# create a range that  from element[0]..element[-1] of the given array and convert to an Array
# iterate by each element in the range, if the elemement exists in the given array, delete from created array

# Algorithm
# init a variable full_range equals (input[0]..input[-1]).to_a
# for each element select by |number|
#   if input does not includes number 
# return the modified value of full_range

def missing(arr)
  full_range = (arr[0]..arr[-1]).to_a
  full_range.select { |num|  !arr.include?(num) }
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]  #=> full range -3,-2, -1, 0, 1, 2, 3, 4, 5
p missing([1, 2, 3, 4]) == []  #full range 1, 2, 3, 4
p missing([1, 5]) == [2, 3, 4] #full range: 1, 2, 3, 4, 5
p missing([6]) == []  #full range 6

return the first substring
if there are duplicate letters, followed by a non-duplicate letter. One followed by the next one like 'et'
long spaces and none are `nil`
high level 
  - substrings, incl. asterisks
  - want to select all bustring that have uniq char's 
  and to account for the impliecit req. must be smaller than orign. or they dont' count
  - multi 

=begin 
# Create a method takes a string as input, iterates over each character of the string, creates
# substrings from each character of the input string and returns the longest substring tha
# does not contain any consecutive repeating characters.

INPUT: string
Outputs: the longest substring without repeating characters.

Requirements:
- Create all of the different substrings
- Don't consider any strings with repeating characters.
- Return the longest string of unique characters that are consecutive to each other.
- Return the _first_ substring if there are two substrings that aare unique and longest.
- if the longest substring is the stirng itself, return the substring that is smaller than the string. # Example et.
- If there are repeating consecutive characters followed by a non-repeating character, treat the repeating character as one character and then return the single character with the next character.

Get all the substrings*.
Select all the substrings that have unique characters AND have less characters than the original string
Find the longest substring in order of appearance?*

Get all substrings?
  # Create a substring array to empty array. 
- Iterate over each index in the string, current_index.
  - Iterate over the later indices, later_index.
    - Get the substrings from the current_index to the later_index.
    - Append the substring to the collection of substrings.

Substrings_array 

=end
# "abc123" => 'a', 'ab', 'abc', 'abc1'...
# 'b', 'bc' ..ARGF
# '3'
# Outer and inner loop 
# Indices 
def substrings(str) 
  substrings = [] 
  size = str.size 
  (0...size).each do | current_index | 
    (current_index+1...size).each do |later_index|
      substrings << str[current_index..later_index] 
    end 
  end 
  substrings 
end 

p substrings("What'sup")


# def find_longest_substring(str) 
#   substrings = substrings(str) 
#   substrings.select! { #later }
#   first_longest_substr(substrings) 
# end 

# p find_longest_substring('bookkeeper') == "eper"
# p find_longest_substring('launch school') == "launch scho"
# p find_longest_substring('leetucebox') == "etucebox"
# p find_longest_substring('eeeet') == "et"
# p find_longest_substring('et') == "e"
# p find_longest_substring('e') == nil
# p find_longest_substring('eeeee') == nil
# p find_longest_substring(' ') == nil
# p find_longest_substring('') == nil


# helper method

"abc123" => 'a', 'ab', 'abc', 'abc1'...
'b', 'bc' ..ARGF
'3'

def substrings(str)
  substrings = []
  size = str.size 
  (0...size).each do | current_index |
    (current_index + 1...size).each do |later_index|
      str[current_index..later_index]
      substrings << str[current_index..later_index]
    end
  substrings
end

p substrings("What'sup")

# outer/inner loop
#indices
#iterate over string for the 

=begin
How does it work for the interview?
Prefer to start with substrings.  Parse this out first, get
problem down first and then start coding.  Wnat to start
doing that on the problem solving.  If I'm showing that I
understand the logic.  She just gets worried if she doesn't 
have the logic down before she starts coding. 

Whatever works the best for you.  I was able to follow what
his logic was..
going over irb it shows you are really understanding what
you are doing.

"Please work" is hack and slash coding.  I shouldn't be 
wishing that the code would work.  

Maddy:

`0.upto(size) do |starting_index|
  starting_index.upto(size - 1) |ending_index|`

Go in more overprepared than underprepared.  The interviewer
wants to know down to the nitty gritty what the logic is.
=end