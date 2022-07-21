# Write a method that takes a string as an argument and returns the character that occurs least often in the given string.  If there are multiple characters with the equal lowest number of occurrences, then return the one that appears first in the  string. When counting characters, consider the uppercase and lowercase version to be the same.

# p least_common_char("Happy birthday!") == ' '
# p least_common_char("Hello World") == "h"
# p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
# p least_common_char("Mississippia") == "m"
# p least_common_char("aaaaaAAAA") == 'a'

# p least_common_char("aaDoda")
# string downcase to bring all on the same level => 'aadoda'
# break string into characters # => ['a', 'a', 'd', 'o', 'd', 'a']
# iterate through the array initializing a hash count value for each character key. # => {'a' => 3, 'd' => 2, 'o' => 1}
# compare the integer values for the character key to find the lowest integer value 
# return least common character => 'o'

  #=> 


# Capital A 
=begin
P:

Describe a method that accepts a string as an argument and then returns the individual character that occurs the lowest number of times in the string.  If more than one character has an equally low number of occurrences in the given string, then return the first in order. Case doesn't matter; uppercase and lowercase are seen as the same by this program.

input: String
output:  character (in that string that occurs least often)

Requirements:
- return the individual character
    - lowest number of occurrences in a String

E: 

D: 

A: iterate over the String
manage counter for each character of the String
hash initializing key/value pairs with each newly introduced character
return lowest occurring character

=end

# Write a method that takes a string as an argument and returns the character that occurs least often in the given string.  If there are multiple characters with the equal lowest number of occurrences, then return the one that appears first in the  string. When counting characters, consider the uppercase and lowercase version to be the same.

# p least_common_char("Happy birthday!") == ' '
# p least_common_char("Hello World") == "h"
# p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
# p least_common_char("Mississippia") == "m"
# p least_common_char("aaaaaAAAA") == 'a'

# p least_common_char("aaDoda")
# string downcase to bring all on the same level => 'aadoda'
# break string into characters # => ['a', 'a', 'd', 'o', 'd', 'a']
# iterate through the array initializing a hash count value for each character key. # => {'a' => 3, 'd' => 2, 'o' => 1}
# compare the integer values for the character key to find the lowest integer value 
# return least common character => 'o'


def least_common_char(derp) 
  derp = derp.downcase.chars
  derp 
  least_common_char = derp.sort[0]
end 
p least_common_char("aaDoda")

def least_common_char(str) 
  chars = str.downcase.chars 
  hash = Hash.new(0) 
  chars.each { | ch | hash[ch] += 1 }
  min_value = hash.values.min 
  hash.key(min_value)
end 


def least_common_char(str) 
  chars = str.downcase.chars 
  counts = chars.tally
  counts = counts.sort_by { |_, value| value }
  counts[0][0]
endq



# Capital A 
=begin
P:

Describe a method that accepts a string as an argument and then returns the individual character that occurs the lowest number of times in the string.  If more than one character has an equally low number of occurrences in the given string, then return the first in order. Case doesn't matter; uppercase and lowercase are seen as the same by this program.

input: String
output:  character (in that string that occurs least often)

Requirements:
- return the individual character
    - lowest number of occurrences in a String

E: 

D: 

A: iterate over the String
manage counter for each character of the String
hash initializing key/value pairs with each newly introduced character
return lowest occurring character

=end