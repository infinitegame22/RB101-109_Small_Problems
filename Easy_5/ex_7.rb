# https://launchschool.com/exercises/e66bd409

=begin
Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.



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
- non-alphapnumeric char's are NOT counted as part of the string size
questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
four -> 4, score -> 5, and => 3, seven => 5

('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
fiddle -> 6, diddle -> 6

word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
string -> hash
************Algorithm*************************
A. Main Method
  1. initialize an empty hash with each value equal to 0
  1. convert string to array of words split on the spaces
  2. iterate over the array of words
    a. delete any non-letters from the word
    b. count the number of letters in the word
      i. if the number of letters already exists in the hash as a key, then increment the value by 1
      ii. else initialize a new key in the hash as the count of the letters and increment the count by 1
  3. return the hash

=end

def word_sizes(string)
  count_hash = Hash.new(0) # count_hash = {}

  word_array = string.split(' ')
  word_array.each do |word|
    word = word.delete('^a-zA-Z')
    if count_hash.has_key?(word.size)
      count_hash[word.size] += 1
    else
      count_hash[word.size] = 1
    end
  end
  count_hash
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}