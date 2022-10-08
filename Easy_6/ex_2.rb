=begin
Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

Input: array
Output: array

set method 

# time complexity if array is size n then look at n things
# o(n) o of n or just linear - with a set of 6 letters, does this 
# letter exist in my set?  o(1) - free operation, no time involved
# For every string we can have a differnt variable where m represents
# the length of every string
# o(n * m * k) - this can grow very quickly!
# we have to look at every character to remove them
# additional overhead of vowels
# variable to represent size of vowels list - `k`
# could be a ton of characters we want to remove
# iterate over array of strings
# iterate over every characters
# iterate over vowels list to check for vowels
# if use a set for our vowels list, k becomes 1.  multiplying by
#   1 is the same value. Optimizing slightly by mathematically
#   changing `k` to 1.  Using a set instead of an array.  Set give
#   us o(1) search time.  It's using a hash function to determine. 
#   A set is the same as hash, but it is just keys.  Really good 
#   data structure to understand, very useful to look things up.
#   Instant lookup
# =end
# require "set"

# def remove_vowels(array)
#   vowels = Set['a', 'e', 'i', 'o', 'u']
#   array.map do |string|
#     char_array = string.downcase.chars
#     char_array.each_with_index do |char, index|
#       if vowels.include?(char)
#         char_array[index] = ''
#       end
#    end.join('')
#   end
# end

# # Launch school answer

# def remove_vowels(strings)
#   strings.map { |string| string.delete('aeiouAEIOU')}
# end

# # Richard Lee's answer

# VOWELS = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

# def remove_vowels(words)
#   words_minus_vowels_array = []
#   counter_01 = 0
#   # outer loop iterating through each word
#   loop do
#     word_minus_vowels = ''
#     word = words[counter_01]
#     counter_02 = 0
#     # inner loop iterating through each character
#     loop do
#       char = word[counter_02]
#       word_minus_vowels << char if !VOWELS.include?(char)
#       counter_02 += 1
#       break if counter_02 == word.size
#     end
#     words_minus_vowels_arr << words_minus_vowels
#     counter_01 += 1
#     break if counter_01  == words.size
#   end
#   words_minus_vowels_arr
# end

# # Oliver Shaw's answer
# def remove_vowels(array_string)
#   array_string.each do |element|
#     element.delete! "AaEeIiOoUu"
#   end
# end

# # Adam Dresher's answer
# VOWELS = %(aeiouAEIOU)

# def remove_vowels(array_of_strings)
#   array_of_strings.map { |word| word.gsub(/[#{VOWELS}]/, '')}
# end

# # Alex M's answer

# VOWELS = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

# def remove_vowels(arr)
#   [].push(arr[0].chars.delete_if{|vowel| ([vowel] & VOWELS).any?}.join)
# end

# # J.D.'s solutions

# VOWELS = 'aeiouAEIOU'

# def remove_vowels(arr)
#   arr.map do |str|
#     str.delete(VOWELS)
#   end
# end

# def remove_vowels(arr)
#   vowels = %w(a e i o u)

#   arr.map! do |str|
#     str.chars.reject do |chr|
#       vowels.include?(chr.downcase)
#     end.join
#   end
#   arr
# end

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']

=begin
# input: array
# output: return the same array, with the vowels a, e, i, o , u removed

# E:
# %w(abcdefghijklmnopqrstuvwxyz) - aeiou --> bcdfghjklmnpqrstvwxyz
# %w(green YELLOW black white) - aeiou --> %w(grn YLLW blck wht)

# D: array --> array

# A:

# - create a constant of all the vowels
# - iterate over the array
#   - substitute any vowel a, e, i, o, u with an empty string
#   - return the new array without those vowels
=end

VOWELS = %w(a e i o u A E I O U)
def remove_vowels(array)
  array.map do |string|
    string.delete(('aeiouAEIOU'))
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) # == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) # == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) # == ['BC', '', 'XYZ']