=begin
Build from scratch a method so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

Goal: intake a string and switch the characters every other character from uppercase to lowercase while disregarding the non-alphabetic characters as part of the lowercase/uppercase switch.  They still need to be included in the return value.

input: String
output: new string 

Rules:
- switch case starting from the first letter being capitialized
- skip over any non-alphabetic characters so they are not included in the every other sequence
- non-alpha characters are still present in the return String

E:
('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
['i', 'g', 'n', 'o', 'r', 'e', ' ', '7', '7', ' ', 't'...]
  0    1    2    3    4    5    -    -    -   -     6
  T    F    T    F    T    F    T    T    T   T     T

D: 
input: String
intermediate: new string object to push into
output: new string 

A:
- initialize result as an empty String
- initilialize an array of lowercase alphabet letters to compare against 
- intialize variable `upcase_on` and set it to true
- iterate over the array of characters created by splitting the intake into its characters
  - if the character downcased is included in the alphabet_arr and the upcase_on is true
    - push the current character upcased into the result String
    - set alpha_char to opposite of current state 
  - elsif the current character downcased is included in the alphabet_array and the upcase_on is off/false
    - add the character downcased to the result String
    - point the `upcase_on` to the opposite value
  - elsif the character is not included in the alphabet Array
    - push the character
- return the result array

=end

def staggered_case(str)
  result = ''
  alphabet = ('a'..'z').to_a
  upcase_on = true

  str.chars.each do |char|
    char = char.downcase
    if alphabet.include?(char) && upcase_on == true
      result << char.upcase
      upcase_on = !upcase_on
    elsif alphabet.include?(char) && upcase_on == false
      result << char
      upcase_on = !upcase_on
    else
      result << char
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'