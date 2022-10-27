### 3.Repeated Substring
# For a given  nonempty string s find a minimum substring t and the maximum 
#number k, such that the entire string s is equal to t repeated k times.
#The input string consists of lowercase latin letters. Your function should 
#return an array (in Ruby and JavaScript) [t, k]

=begin
goal? intake a string and return an array containing a minimum substring t and the max
number k, so that the entire intake string is equal to t repeated k times.  The array 
returned has the two elements 1. substring t and 2. integer k
input: string
output: array

E:
("ababab") == ["ab", 3]
  ^^        --> until the first letter repeats, iterate over the string and create a substring
    ^^
      ^^ --> counter counts the instances of this substring
("abcde") == ["abcde", 1]
  ^^^^^ --> none of these characters repeats so counter only increases 1 and substring is actually the string object

D: 
input: string object
intermediate: counter variable and substring
output: array object

A:
- intialize variable counter to the integer 0  --> counter = 0
- intialize variable substring to an empty string --> substring = ''
- iterate over the string --> string.each_char a - b- a-b- a-b
  a. starting at index 0 until the character at index 0 repeats, shovel the current character
into the empty string --> index 0, substring << current_char, substring = 'a'
  b. unless next_char is equivalent to current_char
    - shovel the next_char into the substring
  c. on each iteration of the loop increment the counter by 1
- at the end of the iteration return the [substring, counter]
=end
#Example #1:

def f(string)
  counter = 0
  substring = ''

  string.each_char.with_index do |char, index|
    until substring.chars.include?(char)  
      substring << char
      counter += 1
    end
  end
  [substring, counter]
end

def f(string)
  #number = []
  index = 0
  # counter = 0
  output = []
  index2 = 0
  

  arr = string.split(//)
  number = arr.each_with_object([]) do |el, num|
    num << arr.count(arr[index])
    index += 1
  end

  arr.each do |x|
    if arr.count(arr[index2]) == number.max
      output << arr[index2]
    end
    index2 += 1
  end
  [output.uniq.join, number.max]
end

p f("ababab") #== ["ab", 3]
p f("abcde") #== ["abcde", 1]

# JD's solution
def get_subs(string)
  subs = []
  (1..string.size).each do |length|
    subs << string[0, length]
  end
  p subs
end

def f(s)
  subs = get_subs(s)
  subs.each do |sub|
    mult = s.size / sub.size
    return [sub, mult] if sub * mult == s
  end
end


p f("ababab") #== ["ab", 3]
p f("abcde") #== ["abcde", 1]