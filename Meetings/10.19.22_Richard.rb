=begin 
Now I Know My ABCs
A collection of spelling blocks has two letters per block, as shown in this list:

```
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
```

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

  Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

*************Problem***************************
Goal: With a collection of spelling blocks (each have only 2 characters) check to see if the input string can be written with these characters.  I can only use a block once and this only returns true if only 1 of the characters is used on the block, not both.
initial input: string
overall output: boolean object

explicit requirements:
- spelling collection is limited and defines the letters that are allowed for use in the string that return True
- on each block there are two characters. both cannot be in the input string; if they are then the method returns FalseC
- each block can only be used once - DELETE?
implicit requirements:
- case doesn't matter, can be lowercase or uppercase
questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
block_word?('BATCH') == true
B:O, N:A, G:T, C:P, H:U --> true
each block is only used once, and one char char from each block is used only
block_word?('BUTCH') == false
H:U --> false
breaks the rule of only using one char per block
block_word?('jest') == true

*************Data 
Structure********************
++the steps the data takes in between input 
++and output listed above
input: string
intermediate: nested array collection of blocks to compare
output: boolean object
************Algorithm*************************
A. Main Method
input: string
  1. intialize block constant as an array of arrays --> [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]
  - create a new collection (array) called blocks_used
  2. iterate over each character of the string
    a. upcase the character
    b. find the character in the collection by iterating over the constant array's sub-arrays
    c. if sub_array includes the character in an iteration
      i. blocks_used << sub_arr 
      [['B', 'O'], [N, A], [G, T], [C, P], [H, U]] 
      ['J', 'W'], ['R', 'E'], ['F', 'S'], [G, T]
  3. iterate over blocks_used
    a. if sub_array contains two elements that are found in the input string
      (string.include?(sub_arr[0] && sub_arr[1])
      i. return false
    b. else return true

***********SCRATCHPAD********** 

=end

BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(string)
  blocks_used = []

  string.each_char do |char|
    char.upcase!
    BLOCKS.each do |sub_arr|
      if sub_arr.include?(char)
        blocks_used << sub_arr
      end
    end
  end

  blocks_used.each do |sub_array|
    if string.include?(sub_array[0] && sub_array[1])
      return false
    else
      return true
    end
  end
end

p block_word?('BATCH') #== true
# block_word?('BUTCH') == false
# block_word?('jest') == true