=begin
Matching Parentheses?

Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

Note that balanced pairs must each start with a (, not a ).


Goal: intake a string and return true if all parentheses in the string are balanced properly in the string (meaning parentheses must occur in matching '(' and ')' pairs).
input: string
output: boolean

Rules:
- all pairs must open with open '(' and close with closed ')'
- no integers
- no empty strings

E:
'What (is) this?' == true --> () only one pair and all closed
balanced?('What is) this?') == false --> only one non paired bracket
balanced?('((What) (is this))?') == true --> all paired brackets
balanced?(')Hey!(') == false --> opposite of position they should be

D: string

boolean

A: iterate over each char of the string
 - count the number of parentheses that are in each string
  - if no () return true
  - if the number of ( equals the number of )
    - then check for ( being the first occurrence and ) being the last occurrence
    - number of ) can never exceed the number of (
    - store the occurrences in a variable for comparison
- return the method solution
=end

def balanced?(str)
  a = '('
  b = ')'
  a_ray = []
  b_ray = []
  return true if str.include?(a) == false && str.include?(b) == false
  return false if str.count(a) != str.count(b)


end

# LS solution

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end


# balanced?('What (is) this?')      #== true
# balanced?('What is) this?')       #== false
# balanced?('What (is this?')       #== false
# balanced?('((What) (is this))?')  #== true
# balanced?('((What)) (is this))?') #== false
p balanced?('Hey!')                 #== true
# balanced?(')Hey!(')               #== false
# balanced?('What ((is))) up(')     #== false