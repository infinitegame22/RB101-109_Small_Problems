=begin
Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed.
Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present. 

input: string
output: reversed string

Requirements: 
- only words with 5 or more letters will be reversed
- string only has letters and spaces

E: 'Professional'       # => 'lanoisseforP'
'Walk around the block' # => Walk dnuora the kcolb
'Launch School'         # => hcnuaL loohcS

D: string => array?

A: break the string into words
iterate over the array
  -IF the length of the string >= 5
    - reverse the string
  - ELSE return the original word

------------------ Scratchpad

 loop over the string with the reverse method
=end

def reverse_words(string)
  string.split.map do |element|
    if element.length >= 5
      element.reverse
    else
      element
    end
  end.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS