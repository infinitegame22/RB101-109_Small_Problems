def reverse_words(string)
  #1. iterate over the string
  #2. reverse the characters in the string
  #3. Allow for a space in between the words.
  #4. Returns a string backwards.
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS