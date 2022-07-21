# =begin
# The `reverse_sentence` method should return a new string with 
# the words of its argument in reverse order, wihtout using any
# of Ruby's built-in `reverse` methods. However, the code below 
# raises an error. 
# =end

# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []

#   i = 0
#   while i < words.length
#     #reversed_words = words[i] + reversed_words
#     reversed_words = [words[i]] + reversed_words
#     i += 1
#   end
  
#   reversed_words.join(' ')
# end

# p reverse_sentence('how are you doing')

# =begin
# Both `String` and `Array` have a `+` method (String#+ and Array#+).
# The former concatenates two strings, the latter concatenates 
# two arrays.  On line 7 we mix these two types: `words[i]` is a 
# string and `reversed_words` is an array. Recall that `words[i] +
# reversed_words` is syntactic sugar for `words[i].+(reversed_words)`;
# we invoked String#+ with an array as argument, causing a TypeError
# to be raised.

# In order to resolve this type mismatch, we can simply turn `words[i]`
# into a one-element array, as shown in the soluiton.  Alternatively,
# we could also use the Array#unshift method to prepend the String 
# object onto the front of our array:
# =end

# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []

#   i = 0
#     while i < words.length
#     reversed_words.unshift(words[i])
#     i += 1
#     end
    
#     reversed_words.join(' ')
#   end

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = words.length - 1
  while i >= 0
    reversed_words << words[i]
    i -= 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
# 0 to 10 is left to right
# we want to go left to right in this loop