=begin
Lettercase Percentage Ratio

In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Goal: intake a string and return a hash object with 3 entries: the first is the percentage of char's in the string that lowercase, the second is the percentage of char's that are uppercase and the last the percentage of char's that are neither (numeric and non-alphanumeric).
Input: string
output: hash

Rules: 
- must be a hash output
- the neither category applies to characters that convert to integers and non-alphanumeric special char's
- return the percentage meaning the number of characters in each category divided by the total number of char's
- the string will always contain at least one character

E:
'abCdef 123' == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
 ^^ ^^^      --> 5 lowercase --> 5/10 total chars --> 50%
   ^         --> 1 upper --> 1/10 total chars --> 10%
       ^ ^^^ --> 4 neither --> 4/10 total --> 40%

'AbCd +Ef' == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 
  ^ ^   ^ --> 3 lower --> 37.5 %
 ^ ^   ^  --> 3 upper --> 3/8 --> 37.5%
     ^^   --> 2 neither --> 2/8 --> 25%


D: 

Input: string
Intermediate: array of characters
output: hash

A: 
Input: string `str`
- initialize `hash_percentage` with three key- value pairs:
  {lowercase: 0, uppercase: 0, neither: 0}
- split the string into an array of characters and save into `char_arr`
  - str.chars >> ['a', 'b', 'C', 'd', 'e', 'f', ' ', '1', '2', '3']
- iterate over the `char_arr`
  - if the char is equivalent to the character made lowercase
    - increase count of lowercase by 1 >> 'a' >> lowercase:1, >> 'b' >> lowercase: 2...
  - elsif the char is equivalent to the character made uppercase
    - increase the count of uppercase by 1 >> 'C' >> uppercase: 1 
  - otherwise increase the count of nether to 1 >> ' ' >> neither: 1 ...
- iterate over the `hash_percentage` and divide each count (value) by the size of the string
  - {lowercase: 5, uppercase: 1, neither: 4}
  - {lowercase: 5/10.to_f * 100, uppercase: 1, neither: 4}
-returns the hash

=end

def letter_percentages(str)
  hash_percentage = {lowercase: 0, uppercase: 0, neither: 0}

  char_arr = str.chars

  char_arr.each do |char|
    if char.match?(/[a-z]/)
      hash_percentage[:lowercase] += 1
    elsif char.match(/[A-Z]/)
      hash_percentage[:uppercase] += 1
    else
      hash_percentage[:neither] += 1
    end
  end

  hash_percentage.each do |k, v|
    hash_percentage[k] = ((v/(str.length).to_f) * 100)
  end
  hash_percentage
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef')   == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123')        == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }