=begin
Write a method that takes a single string argument and returns 
a new string that contains the original value of the argument
with the first character of every word capitalized and all
other letters lowercase.

input: string
output: string

E: 'four score and seven' --> 'Four Score And Seven'
                               ^    ^     ^   ^

D: string -> array -> string

A: 
break string into words
capitalize index 0 of each word
decapitalize every other character of each word

=end

def word_cap(string)
  string = string.split.map do |word|
    word.capitalize
  end
  string.join(' ')
end

def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
