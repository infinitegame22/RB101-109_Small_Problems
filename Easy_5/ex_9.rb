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

A: initialize an empty array

iterate over the string
check 1 character, then check to see if next is the same
  IF it is the same add the duplicate substring to the empty array
Check next character
How would you find the best way to iterate
return string with duplicates removed 
=end
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''