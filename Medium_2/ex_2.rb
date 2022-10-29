=begin
A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Goal: intake a string and check it against the given spelling blocks.  Return true if a word doesn't contain both letters in a given block, otherwise return false.
input: string
output: boolean object

Rules:
- the words I can spell with the blocks to just those words that do not use both letters from any given block
- each letter in each block can only be used ONCE
- case insensitive

E:
'BATCH' --> B:O, N:A, G:T, C:P, H:U --> true
'BUTCH' --> B:O, H:U --> H and U are on the same block so --> false
'jest' --> J:W, R:E, F:S, G:T

D: 
input: string
intermediate: array
output: boolean object

A: 
-  initialize a constant of the blocks (nested array) --> BLOCKS = [[B, O], [X, K], [D, Q], [C, P],  [N, A], [G, T], [R, E], [F, S], [J, W], [C, P], [H, U], [V, I], [L, Y], [Z, M]]
- Iterate through each sub array of the blocks 
  - if the string contains both letters in a given subarray
    - return false
  - return true

- 



=end

TEST_BLOCKS = [['B','O'], ['X','K'], ['D','Q'], ['C','P'], ['N','A'],
['G','T'], ['R','E'], ['F','S'], ['J','W'], ['H','U'],
['V','I'], ['L','Y'], ['Z','M']]

def block_word?(string)
  TEST_BLOCKS.each do |block|
    return false if block.all? { |char| string.include?(char) }
  end
  true
end


p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest')  #== true