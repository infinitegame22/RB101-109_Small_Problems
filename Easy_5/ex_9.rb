=begin
Write a method that takes a string argument and returns a
new string that contains the value of the original string 
with all consecutive duplicate characters collapsed into 
a single character. You may not use String#squeeze or 
String#squeeze!.

P: Rewrite the problem in my own words.
Write a method that accepts a string argument and returns a
new string object that holds the value of the original string
with all touching doubled characters removed and replaced by 
just the character without using String#squeeze/!.

Input: string
Output: string

Requirements:
- smooshes the extra duplicate characters into one single string
- cannot use the built-in method String#squeeze
- does this need to be able to handle special characters?

`squeeze` builds a set of characters from the `other_str` 
parameter(s) using the procedure described for #count. Returns
a new string where runs of the same character that occur in
this set are replaced by a single character. If no arguments
are given, all runs of identical characters are replaced
by a single character.

E:
'4444abcabccba' == '4abcabcba' => removes only consecutive 
characters

D: 

A: initialize an index counter
initialize an empty string
loop over string while the index  is less than the length of 

iterate over the string
need new object in which to store
  IF it is the same add the duplicate substring to the empty array
Check next character
How would you find the best way to iterate
return string with duplicates removed 

How do I do this with each_char or String#chars?
=end

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

def crunch(text)
index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]

# def crunch(string)
#   clean_arr = []

#   string.split(//).map do |chr|
#     next if clean_arr.last == chr
#     clean_arr << chr
#   end

#   clean_arr.join
# end

# JD's answer

def crunch(string)
  string.each_char.with_object('') do |letter, new_string|
    new_string << letter unless new_string[-1] == letter
  end
end


p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''

=begin
This one isn't too bad.  We have to go through each character
of this string and check for any consecutive duplicate
characters. The plan is to build the return value, character
by character, in the string reference by `crunch_text`. With
that in mind, we use `index` to track our position in `text`.

On each iteration of our loop, we check whether the indexed
character is equal to the next character in `text`.  If the
characters are the same, we do nothing but advance the index
to the next character in `text`. Otherwise, we append the
current character to `crunch_text` and increment the index.
=end
