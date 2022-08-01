=begin
Write a method that returns a list of all substrings of a 
string that start at the beginning of the original string.
The return value  should be arranged in order from shortest
to longest substring.

input : string
output: array

E:
'abc' == ['a', 'ab', 'abc']

D: array

A: iterate over the string
loop over and return the first index
loop over and return the first and second index
loop over and return the first, second, and third index
...

=end
# def leading_substrings(string)
#   holding_array = []
#   string.chars.each do |char|
#     holding_array << char
#   end
# end

#LS

def leading_substrings(string)
  result =[]
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

=begin
This problem is straightforward; all we need to do is to 
iterate through the characters of a string, returning each
substring that starts at the beginning of the string, and
ends with the character we are currently iterating.

The hardest part of this problem is determining the correct
looping structure to use; we decided to use `upto`, but any
looping structure that works would be fine.

The expression `string[0..index]` may need a bit of expla-
nation; it simply returns a substring of `string.`
=end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Raphael's
def leading_substrings(string)
  1.upto(string.size).map {|num| string.slice(0, num)}
end

# Stephen
def leading_substring(in_str)
  subs = []
  in_str.length.times do |num|
    subs << in_str[0..num]
  end
  subs
end

# Frank
def leading_substrings(string)
  counter = 0
  arr =[]

  loop do
    arr << string[0..counter]
    counter += 1
    break if counter == string.length
  end
  arr
end

# Carlos
def leading_substrings(string)
  string.chars.each_with_object([]) { |index, array| array << string[0..index] }
end