=begin
Write a method that takes a string, and returns a new string
in which every consonant character is doubled. Vowels (a,e,
i, o, u), digits, punctuation, and whitespace should not be
doubled.

E: 'String' == "SSttrrinngg"
'July 4th' == 'JJullyy 4tthh'

D: 
A: initialize an empty array
iterate over the string
if the character is a vowel
  - return character
elsif the character is 

=end
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

=begin
This exercise is nearly identical to the previous exercise,
Main difference - check each character to see if it is a 
consonant.  
=end
# Lucas'
CONSONANTS = /[A-z&&[^aeiou]]/

def double_consonants(string)
  string.chars.each_with_object("") do |char, new_string|
    char.match?(CONSONANTS) ? new_string << char*2 : new_string << char_count
  end
end

# Oliver's
def double_consonants(string)
  result = ''

  string.chars.each do |char|
    if char =~ /[^aeiou\d\W]/
      result << char * 2
    else
      result << char
    end
  end
  result
end

# Adam's
def double_consonants(string)
  string.chars.inject('') do |sum, char|
    sum += char.match?(/[^aeiou\d\W]/i) ? char * 2 : char
  end
end

# Jacob's
def double_consonants(string)
  constants = ('a'..'z').to_a.join.delete('aeiou')

  string.chars.map do |char|
    constants.include?(char.downcase) ? char * 2 : char
  end.join
end

