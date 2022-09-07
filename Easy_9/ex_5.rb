=begin
Write a method that takes a string argument, and returns `true` if all of the
alphabetic characters inside the string are uppercase, `false` otherwise.
Characters that are not alphabetic should be ignored.

GOAL:
- check if the string argument contains all uppercase characters the method will
return true.
- otherwise the method will return false.

input: string
output: boolean

E: 't' => false
'T' => true
'Four Score' => false
'FOUR SCORE' => true
'4SCORE!' => true
'' => true

D: string iteration
boolean return

A: convert string to array of characters
iterate over array
if character is downcase 
  return false
else
  keep checking 
=end

#LS answer
def uppercase?(string)
  if string == string.upcase
    true
  else
    false
  end
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

=begin
The easiest way to solve a problem is to realize that the
condition "all of the alphabetic characters...are uppercase"
is true only if the string is not altered by converting
it to all uppercase. Thus, all we need to is compare `string`
with `string.upcase`.

Food for thought: in our examples, we show that `uppercase?`
should return `true` if the argument is an empty string.
Would it make sense to return `false` instead?
=end
def uppercase?(str)
  !(str =~ /[a-z]/)
end