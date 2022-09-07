=begin
# Given the array
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

Write a program that prints out groups of words that are
anagrams. Anagrams are words that have the same exact 
letters in them but in a different order. Output looks like:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)



=end 
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

# words_hash = words.each_with_object(Hash.new []) do |word, hash|
#   hash[word.chars.sort] += [word]
# end
# found online

#p words_hash # => {
  #["d", "e", "m", "o"]=>["demo", "dome", "mode"], 
  #["e", "n", "n", "o"]=>["none", "neon"], 
  #["d", "e", "i", "t"]=>["tied", "diet", "edit", "tide"],
  # ["e", "i", "l", "v"]=>["evil", "live", "veil", "vile"],
  # ["f", "l", "o", "w"]=>["fowl", "wolf", "flow"]}

#LS solution
result = {}

words.each do |word|
  key = word.split('').sort.join # => "demo"
  if result.has_key?(key) # => if this key already exists
    result[key].push(word) # => add the new word to the array
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end

=begin
The trickiest of this problem is figuring out how to check if
two words are anagrams. Since anagrams are two words which 
contain exact same letters, but in different order, if we sort
each anagram word, values should be the same.  For example:

`dome` and `mode` are anagrams because when we sort both of
them we get `demo`.

Now that we know how to find anagrams, we can use a hash to
store the sorted version of the word as the key in the hash
and its value will be an array of all anagrams of that word.

Translating this to code...we first initialize a hash `result`.

Then, we iterate over the words array and in each iteration:

1. We check if the sorted version of the word is already in
the hash. If it is we add it to the value array.
2. If the sorted version is not in he hash we add it to the
hash and the initial value of that key is just the array with
that word in it.

In the end we print the values in the `result` hash.
=end