=begin
Write a method that takes a non-empty string argument, and
returns the middle character or characters of the argument.
If the argument has an odd length, return exactly one
character. If the argument has an even length, I should
return exactly two characters.

input: string
output: character

D: 
A: find the middle by counting
string.length/2

=end

def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end 

def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
  string[center_index]
else
  string[center_index - 1, 2]
end
end

=begin
The main difficulty here is understanding the difference 
between the index number and the character number. Take the
string in the first test for example: `"I love ruby"`. The
third character is `"l"`, however, the third index is `"o"`.
This is because, when counting characters, start at 1, but
when counting indexes, start at 0.

First step - determine the centermoset character in the string.
This is easy for odd-length strings: the center point of a
5 character string, for instance, is the 3rd character, or
index 2. For even-length strings, things are slightly more
complicated: we need the index of two characters, the char-
acter to the left of the centerpoint, and the character to
the right. For a 4 character string, these are the 2nd and 
3rd characters, or indexes 1 and 2.

In both cases, we can divide the string length by 2 to get 
either the index we want (`5 / 2 == 2` for our 5 character
string), or the index of the character just to the right of
center (`4 / 2 == 2` for our 4 character string). All that 
remains after determining these values is to extract the
appropriate character(s) from the string. For odd lengthed
strings, we just get the middlemost character, and for even-
lengthed strings, we get the character at the indicated 
index, and the character just prior to it; we use the sub-
string-ing form of teh `String#[]` method to extract 2 
characters at `center_index - 1`.
=end

# benhancock
def center_of(str)
  str_arr = str.split('')
  until str_arr.size <= 2
    str_arr.pop
    str_arr.shift
  end
  return str_arr.join
end

# Carlos'
def center_of(string)
  half = string.size / 2
  string.size.odd? ? string[half] : string[half - 1, 2]
end

# Adam
def center_of(string)
  middle = string.size / 2
  string.size.odd? ? string[middle] : string[middle - 1..middle]
end