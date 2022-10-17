# https://launchschool.com/exercises/e66bd409

=begin
Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Grokking Algorithms

*************Problem***************************
Goal: intake a string that has a space separating words and return a hash that shows the number of words of different sizes.
initial input: string
overall output: hash

explicit requirements:
- one or more spaces are separating words
- hash contains:
  - keys: the sizes of the words
  - values: how many words in the string have that size
- words consist of any string that do not include a spaces
implicit requirements:
- an empty string input returns an empty Hash
- non-alphapnumeric char's are counted as part of the string size
questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
four -> 4, score -> 5, and -> 3, seven. -> 6
'Hey diddle diddle, the cat and the fiddle!' == { 3 => 5, 6 => 1, 7 => 2 }
hey -> 3, diddle -> 6, diddle, -> 7, the -> 3, cat -> 3, and -> 3, the -> 3, fiddle! -> 7
"What's up doc?" == { 6 => 1, 2 => 1, 4 => 1 }
what's -> 6, up -> 2, doc? -> 4
word_sizes('') == {} empty -> empty
"How many 4's are there?" == { 3 => 3, 4 => 1, 6=> 1}
how -> 3, many -> 4, 4's => 3, are => 3, there? -> 6
supercalifragilisticexpealidocious => {26 => 1 }
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
string -> hash
************Algorithm*************************
A. Main Method
  1. initialize an empty hash with each value equal to 0
  1. convert string to array of words split on the spaces
  2. iterate over the array of words
    a. count the number of letters in the word
      i. if the number of letters already exists in the hash as a key, then increment the value by 1
      ii. else initialize a new key in the hash as the count of the letters and increment the count by 1
  3. return the hash

=end

def word_sizes(string)
  count_hash = Hash.new(0)

  word_array = string.split(' ')
  word_array.each do |word|
    if count_hash.has_key?(word.size)
      count_hash[word.size] += 1
    else
      count_hash[word.size] = 1
    end
  end
  count_hash
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
# word_sizes("How many 4's are there?")
# word_sizes("supercalifragilisticexpealidocious")