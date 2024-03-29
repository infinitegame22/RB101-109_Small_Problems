=begin
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.


The String#gsub! method may prove useful in this problem.

String#gsub! requires a "pattern" argument, which is typically expressed as a regular expression (regex). Regular expressions (regex) are very useful for string operations, but we don't cover them in any detail until RB130. If you haven't already read our book, Introduction to Regular Expressions, you may do so now, but it isn't necessary - this hint provides the only regular expression you need for this problem: if you have a variable named foo that contains some sort of word and want to match that word in a longer string, you can use the regex /\b#{foo}\b/.
Goal: intake a string and replace any english integer words with digits
input: string
output: string (with integer words replaced with string nums)

Rules:
- gsub

E:
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
- no special char's
- maintain spaces

D:

A: 
- initialize a hash with keys as integer words and values as integer strings
- sub any integer words with integer string value
- return the new string
=end

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'}
}

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  word_sizes
end


word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'