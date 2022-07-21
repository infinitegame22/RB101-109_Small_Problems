=begin
We wrote a `neutralize` method that removes negative words
from sentences. However, it fails to remove all of them. 
What exactly happens?
=end

# def neutralize(sentence)
#   words = sentence.split(' ')
#   words.each do |word|
#     words.delete(word) if negative?(word)
#   end

#   words.join(' ')
# end

def neutralize(sentence)
  words = sentence.split(' ')
  words.each_with_index do |word, index|
    p index
    p word
    p words
    words.delete(word) if negative?(word)
    p words
  end

  words.join(' ')
end


def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')

=begin
A good way to see what is happening is to inspect `word` and
`words` for each iteration of the block on lines 3-5. In the
following example we decided to simply insert a few print
statements. We also use `Enumerable#each_with_index` instead
of `each`, in order to see which index of the `words` array 
we are at.

The new lines of code output the following
=end
0
"These"
["These", "dull", "boring", "cards", "are", "part", "of", "a", "chaotic", "board", "game."]
["These", "dull", "boring", "cards", "are", "part", "of", "a", "chaotic", "board", "game."]
1
"dull"
["These", "dull", "boring", "cards", "are", "part", "of", "a", "chaotic", "board", "game."]
["These", "boring", "cards", "are", "part", "of", "a", "chaotic", "board", "game."]
2
"cards"
["These", "boring", "cards", "are", "part", "of", "a", "chaotic", "board", "game."]
["These", "boring", "cards", "are", "part", "of", "a", "chaotic", "board", "game."]

=begin
At index 0, nothing interesting happens. When the iteration is
at index 1, the element is `"dull"`. Since it counts as negative,
it is deleted from the array. As a consequence, each subsequent
word is shifted one position to the left. In particular, the word
that was previously at position 2, `"boring"`, is now at position
1. So in the next step, when the iteration is at index 2, it finds
`"cards"`. Our mutation of the array caused it to skip `"boring"`. 

Teresa Tran's solutions
- delete method alters the index of the words in the array, hence
the 2nd of the 2 negative words next to each other get ignored
- use reject! or select! method instead
=end

def neutralize(sentence)
  words = sentence.split(' ')
  # words.select! {|word| negative?(word)}
  words.reject! { |word| negative?(word) }
  words.join(' ')
end

#Marwan Zarab's solution
def neutralize(sentence)
  words = sentence.split(' ')
  words.delete_iff do |word|
    negative?(word)
  end

  words.join(' ')
end

#Joshua Baldwin's solution
def neutralize(sentence)
  words = sentence.split(' ').select! {|word| !negative?(word)}.join(' ')
end

#Cody Williams' solution
def neutralize(sentence)
  words = sentence.split(' ')
  result = words.dup

  words.each do |word|
    result.delete(word) if negative?(word)
  end

  result.join(' ')
end

#Nenad Neskovic's solution
def neutralize(sentence)
  words = sentence.split(' ')
  words.reject { |word| negative?(word) }.join(' ')
end
# Ric Gonzalez' solution
# The `each` method executes the block on each word in `words`
# array, but as it's iterating some words are being deleted, 
# throwing off the placement.

# Iterating over a copy of `words` allows the `delete` method
# to not affect placement:
def neutralize(sentence)
  words = sentence.split(' ')
  words.clone.each do |word| # iterates over a copy of words so that it edits words without affecting which word is available. 



