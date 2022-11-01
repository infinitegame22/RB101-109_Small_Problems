#Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
# Note that balanced pairs must each start with a (, not a ).

=begin
Goal: intake a string and return true if all parentheses in the string are properly balanced (the parentheses much occur in matching pairs, starting with an opening marker) or false otherwise
input: String
output: boolean Object

E:
balanced?('What (is) this?') == true
() one pair --> true
balanced?('What is) this?') == false
) --> false
balanced?('What (is this?') == false
( --> false
balanced?('((What) (is this))?') == true
(()()) --> 3 balanced pairs --> true
balanced?('((What)) (is this))?') == false
(())()) --> uneven --> false
balanced?('Hey!') == true
0 > false
balanced?(')Hey!(') == false
)(-> false
balanced?('What ((is))) up(') == false
(()))( --> unbalanced pair --> false

D:
input: String
intermediate: counting across chars
output: boolean Object

A:
- initialize `count` variable and set it to 0
- iterate over the characters of the string
  - if character is a '(' and the count is a positive number add one to then count
  - if character is a ')' remove oe from the count
- check if the count is equivalent to zero

=end

def balanced?(str)
  count = 0
  str.each_char do |char|
    if char == '(' && count >= 0
      count += 1
    elsif char == ')'
      count -= 1
    end
  end
  count == 0
end

p balanced?('What (is) this?')      == true
p balanced?('What is) this?')       == false
p balanced?('What (is this?')       == false
p balanced?('((What) (is this))?')  == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!')                 == true
p balanced?(')Hey!(')               == false
p balanced?('What ((is))) up(')     == false
