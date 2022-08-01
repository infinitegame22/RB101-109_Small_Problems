=begin
Write a method that takes a string, and returns a new string
in which every character is doubled.
input: string
output: string

Requirements: double the characters

D: string

A: iterate over the string
make a copy of each character and insert it into the string


=end

def repeater(string)
  string.chars.map { |char| char * 2}.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''