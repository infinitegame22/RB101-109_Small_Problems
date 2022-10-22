=begin

https://launchschool.com/exercises/77884ef5

Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

=begin pedac

*************Problem***************************
Goal: intake a string and return a new string object that uses staggered capitalization on every other character starting at the first character but does include non-alphanumeric characters as part of the switching between upper and lowercase.
initial input: string
overall output: new string with alternate lowercase/uppercase

explicit requirements:
- new string contains original value with staggered capitalization scheme
- characters should not be changed, but should be counted as part of the staggering
implicit requirements:
- can't capitalize the integers
questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
'I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
 ^                           ^ --> if it's already capital, keep it capitalized
  - spaces count so every word is capitalized
'ALL_CAPS') == 'AlL_CaPs'
    ^              ^ --> unchanged, but counts as lowercase in this one, so next letter is capitalized
'ignore 77 the 444 numbers'== 'IgNoRe 77 ThE 444 NuMbErS'
           ^                             ^  --> numbers unchanged but still count for every other
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
input: String
intermediate: array of the characters, to iterate over
output : string
************Algorithm*************************
A. Main Method
input: string  >>'I Love Launch School!'
  1. intialize empty string object `swapcase_string`
  2. convert input string to an array of characters >> ['I', " ", 'L' ... ]
  3. iterate over array of characters 
    a. starting at index 0 and applying to every index that is divisble by 2, upcase the character and push it into the swapcase_string >> 'I'. upcase >> swapcase_string,
    b. otherwise push the character downcased into `swapcase_string` >>  ' '.downcase >> swapcase_string
  4. return swapcase_string


***********SCRATCHPAD********** 

=end

def staggered_case(string)
  swapcase_string = ''

  string.chars.each_with_index do |char, idx|
    idx % 2 == 0 ? swapcase_string << char.upcase : swapcase_string << char.downcase
  end


  swapcase_string
end

p staggered_case('I Love Launch School!')     == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS')                  == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'