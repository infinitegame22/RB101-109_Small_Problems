=begin
P:
input - two strings as arguments
output- string
Rules: program needs to find the longer of the two strings, then 
sandwich the long string between the short string at the beginning
and the end
- strings will be different lengths, always be a shorter string and
a longer string
- what happens is user inputs an argument that is not a string?
- what happens if method receives argument is not a string?

E:

D: string

A: method checks the strings for length
if first string is longer than the second string
  output second string then first string then second string
else
  output first string then second string then first string

C:

=end

def short_long_short(string1, string2)
  if string1.class != String || string2.class != String
    return 'Please input a string.'
  if string1.size > string2.size
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
puts short_long_short(123, 456)