def char_removal(string)
  string.gsub(/[^a-zA-Z ]/i, '')
end

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

p word_sizes(char_removal('Four score and seven.')) == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes(char_removal('Hey diddle diddle, the cat and the fiddle!')) == { 3 => 5, 6 => 3 }
p word_sizes(char_removal("What's up doc?")) == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes(char_removal('')) == {}
