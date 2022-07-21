def swap_letter(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

# def swap(sentence)
#   arr = sentence.split(' ')
#   arr.each_with_index do |word, index|
#     mutated_word = swap_letter(word)
#     arr[index] = mutated_word
#   end
#   arr.join(' ')
# end

def swap(sentence)
  sentence.split(' ')
    .map {|word| swap_letter(word)}
      .join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# break into words, split at the spaces => array of strings
# strings , dynamically switch the first and last characters, 
# strings treated like arrays with indices. Index of length -1
# will be the last letter, for each individual word, loop over 
# words, just swapping first and last letter in place, don't 
# have to iterate over anything in that case. Array of words, loop
# over it
# small function that just swaps first and last letter
#loop over words, pass the word to swapping function
#modularizing code
#map over array of words, to transform the function
#join method with a space between

=begin
tr(from_str, to_str) => new_str
Returns a copy of str with the characters in from_str replaced
by the corresponding characters in to_str. If to_str is shorter
than `from_str`, it is padded with its last character in order
to maintain the correspondence.
=end