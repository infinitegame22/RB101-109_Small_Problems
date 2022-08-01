=begin
input - string
output - hash
key - number of characters
value - 

break string into words
 - update hash, key is `4`
  - IF `4` exists, add 1 to the count
  - ELSE add a new key value pair where the count of characters is the key with a 
  value of 1

  https://open4tech.com/array-vs-linked-list-vs-hash-table/

  The array index is predetermined , but the hash we only know at run time.  The indexes
  are computed when we use the hash function. 
=end

def word_sizes(string)
  char_count = Hash.new
  string.split.each do |word|
    key = word.length
    if char_count.has_key?(key)
      char_count[key] += 1 # reassign index and value, if just do `+ 1` no go.
    else
      char_count[key] = 1 # char_count is hash, access like an array 1 goes into hash.
    end
  end
  char_count 
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}