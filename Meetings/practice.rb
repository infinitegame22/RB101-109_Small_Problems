=begin
3. Return substring instance count (easy-med)
([https://www.codewars.com/kata/5168b125faced29f66000005/train/ruby](https://www.codewars.com/kata/5168b125faced29f66000005/train/ruby))
7 kyu
Return substring instance count
Complete the solution so that it returns the number of times the search_text is found within the full_text.

Usage example:


Goal: intake a full text string and a substring and return the integer number of times the substring appears in the full text string
input: two strings
output: integer

Rules:
- both argument strings are lowercase
- non alpha characters can be included in the full string

E:
solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
'aa_bb_cc_dd_bb_e' --> split this into an array of characters
    ^        ^
    1        2
    temp_substring to store the substring that is the size of the search text?
    array of substrings created from the search text and count how many times the search text appears in the full string
solution('aaabbbcccc', 'bbb') # should return 1
'aaabbbcccc'
    ^
    1

D:
input: two strings
intermediate: counter, array of substrings
output: integer

A:
input: two strings, `full_text` and `search_text`
- create a helper method to find all of the substrings in the full_text string
  - initialize variable `substrings` to an empty array 
  - iterating over a range from 0 upto but not including the size of the full_text string
    - then iterating over a range from current element in range to the current element in nested iteration create sliced substrings of the full_text string
    - push those substrings into the `substrings` array
  - return `substrings` array
- count the number of times the search_text appears in the substrings array and return that integer
    

=end

def solution(full_text, search_text)
  substrings = substrings(full_text)
  substrings.count(search_text)
end

def substrings(full_text)
  substr = []
  (0...full_text.size).each do |st_idx|
    (st_idx...full_text.size).each do |end_idx|
      substr << full_text[st_idx..end_idx]
    end
  end
  substr
end



p solution('abcdeb','b')  #== 2
p solution('abcdeb', 'a') #== 1
p solution('abbc', 'bb')  #== 1