=begin
Write method that returns true if the string passed as an 
argument is a palindrome, false otherwise.

Rules:
- case matters
- punctuation and spaces matter
=end

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# Lucas Sorribes'
def palindrome_v2?(string)
  if string.size.odd?
    mirror_substring = (0..string.size / 2)
  else
    mirror_substring = (0...string.size / 2)
  end

  string.count(string[mirror_substring]) == string.size
end

# JD
def palindrome?(item)
  new_item = item.class.new
  reverse_counter = (item.size - 1)

  while reverse_counter >= 0
    new_item += item[reverse_counter]
    reverse_counter -= 1
  end

  new_item == item
end