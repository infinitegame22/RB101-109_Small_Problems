=begin pedac

*************Problem***************************
Goal: intake a string and output the string in which the first and last letters are swapped
initial input: string
overall output: string

explicit requirements:

implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
'Oh what a wonderful day it is' --> 'hO thaw a londerfuw yad ti si'
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
A. Main Method
  1. swap the first character with the last character
  2. return the new string
  3.


***********SCRATCHPAD********** 

=end

# def swap_first_last_characters(word)
#   string[0], string[1] = string[1], string[0]
# end

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end

# def swap_letter(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(sentence)
#   arr = sentence.split(' ')
#   arr.each_with_index do |word, index|
#     mutated_word = swap_letter(word)
#     arr[index] = mutated_word
#   end
#   arr.join(' ')
# end

# def swap(sentence)
#   sentence.split(' ')
#     .map {|word| swap_letter(word)}
#       .join(' ')
# end

def swap_first_last_characters(a, b)
  a, b = b, a
end
word = 'Abcde'
p swap_first_last_characters(word[0], word[-1])

# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'

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