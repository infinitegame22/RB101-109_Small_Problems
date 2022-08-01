=begin
Write a method that takes a single string argument and returns 
a new string that contains the original value of the argument
with the first character of every word capitalized and all
other letters lowercase.

Words are any sequence of non-blank characters.
input: string
output: string

E: 
'the javaScript language' == 'The Javascript Language'
'this is a "quoted" word' == 'This Is A "quoted" Word'

D: 
A: find each first letter of each word and capitalize it
check all the rest of the letters and if 
=end
def word_cap(string)
  string.split.each {|i| i.capitalize!}.join(' ')
end

#LS
def word_cap(words)
  words_array = words.split.map do |word|
    word.capitalize
  end
  words_array.join(' ')
end

def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end

=begin
In the second solution, `(&:method_name)` is shorthand no-
tation for `{ |item| item.method_name }`. Thus, `&:capitalize` 
translates to:
=end
do |word|
  word.capitalize
end

def word_cap(words)
  words.split.each_with_object([]) { |word, array| array << word.capitalize }.join(' ')
end

# Stephen
def word_cap2(in_string)
  word_arr = in_string.downcase.split
  word_arr.each { |word| word[0] = word[0].upcase if word[0] =~ /[a-z]/}.join(' ')
end

def word_cap3(in_string)
  new_string = in_string.dup.downcase
  new_string.length.times do |num|
    if num == 0
      new_string[num] = new_string[num].upcase if new_string[num] =~ /[a-z]/
    else
      new_string[num] = new_string[num].upcase if new_string[num] =~ /[a-z]/ && new_string[num-1] == ' '
    end
  end
  new_string
end
# We can use this shorthand syntax with any method that has no
# required arguments.

# Richard Lee

UPPERCASE_CHARS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

def word_cap(str)
  str_capitalized = ''
  words_arr = str.split(' ')

  index1 = 0
  loop do # outer loop
    word = words_arr[index1]

    index2 = 0
    loop do # inner loop
      if !UPPERCASE_CHARS.include?(word[index2]) && (index2 == 0)
        word[index2] = word[index2].upcase
      elsif UPPERCASE_CHARS.include?(word[index2]) && !(index2 == 0)
        word[index2] = word[index2].downcase
      end
      index2 += 1
      break if index2 == word.size
    end

    index 1 += 1
    break if index1 == words_arr.size
  end
  str_capitalized = words.arr.join(' ')
end

# Bethany's answer

def word_cap(phrase)
  phrase.split(' ').map { |word| word.capitalize }.join(' ')
end

def word_cap_2(phrase)
  (phrase.split(' ').map! do |word|
    word[0].upcase + word[1..].downcase
  end).join(' ')
end

# Adam

ALPHABET = /[A-z]/.freeze

def word_cap(string)
  string.split.map do |word|
    word.chars.map! do |letter|
      if letter.match?(ALPHABET) && letter == word[0]
        letter.upcase
      else
        letter.downcase
      end
    end.join
  end.join(' ')
end

# Jacob

def word_cap(words)
  result = ''
  result << words[0].upcase
  words[1..-1].each_char do |char|
    result << (result[-1] == ' ' ? char.upcase : char.downcase)
  end

  result
end

def word_cap(string)
  new_string = []
  string.downcase.split.map do |word|
    word[0] = word[0].upcase
    new_string << word_cap
  end
  new_string.join(' ')
end

LOWER_CASE = ('a'..'z').to_a
UPPER_CASE = ('A'..'Z').to_a

def word_cap(string)
  new_string = []
  string.split.each do |word|
    if LOWER_CASE.include?(word[0])
      word[0] = UPPER_CASE[LOWER_CASE.index(word[0])]
    end
    (word.size-1).times do |i|
      if UPPER_CASE.include?(word[i+1])]
      end
    end
    new_string << word
  end

  new_string.join(' ')
end

# grant lee's solution

def word_cap(string)
  index = 0
  arr = string.split
  while index < arr.length
    arr[index].capitalize!
    index += 1
  end
  arr.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'