=begin 
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.
Goal: intake a non-empty string and return the char or 2 char's that are at the string's middle
input: string
output: string (can be one char or two)

Rules:
- if the argument has an odd length, return 1 char
- if the argument has an even length, return 2 char's
- spaces count as a character
- if only one char long, return 1 char

E: 
'I love ruby' == 'e'
  11 char's --> 1
'Launch School') == ' '
13 char's --> 1
'Launch') == 'un'
6 char's --> 2

A: 
- if the size of the string is odd --> 'I love ruby'
  - divide the string size in half and return the char at that `index` --> 5
- otherwise if the the string size is even --> 'Launch'
  - return the string from index of string size - 1 to the index at half the string size --> string[3-1] to string [3]
=end 

# test cases 
def center_of(string)
  index = string.size/2

  if string.size.odd?
    return string[index]
  else
    return string[index - 1..index]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'