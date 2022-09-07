=begin
Write a method that takes a string as an argument, and 
returns an array that contains every word from the string,
to which you have appended a space and the word length.

Assume the words in the string are separated by exactly one
space, and that any substring of non-space characters is a
word.

GOAL: Count the number of letters in each string element of 
the argument string. Return each element count in the string
of the array returned.

input: string
output: array

E: "cow sheep chicken" => ["cow 3", "sheep 5", "chicken 7"]

D: string
map over string
add count of characters to end of string

A: split string into words
put words into a collection/array
iterate over array and count the letters
append the count to the string element
return the adjusted array
=end
def word_lengths(string)
  string.split.map do |word|
    "#{word} #{word.length.to_s}"
  end
end

p word_lengths("cow sheep chicken") #== ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") #==
    ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") #== ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
 
p word_lengths("Supercalifragilisticexpialidocious")#==
   ["Supercalifragilisticexpialidocious 34"]
 
p word_lengths("") == []