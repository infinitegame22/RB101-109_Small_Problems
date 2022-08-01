=begin
Write a method that takes a string as an argument, and reutnrs
a new string that contains the original value using a stag-
gered capitalization scheme in which every other character
is capitalized, and the remaining characters are lowercase.
Characters that are not letters should not be changed, but
counts as characters when switching between upper and 
lowercase.

input: string
output: string

E:
'I Love Launch School!' == 'I LoVe lAuNcH ScHoOl!'

D:

A: iterate over the string
if character is index 0, uppercase
- if character is index 1
=end
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end
=begin
This solution simply iterates through the string while 
building another String one character at a time, either
uppercase or lowercasing each character as needed. Note
that we never need to actually test whether a character
is upper- or lowercase, or even whether it is alphabetic:
the `upcase` and `downcase` methods handle this for us.

To keep track of whether we 
=end

# Tony's
def staggered_case(input_string)
  final_array = []

  input_string.chars.each_with_index do |char, index|
    index.even? ? final_array << char.upcase : final_array << char.downcase
  end

  final_array.join
end

# Jesse's

def staggered_case(string)
  stag_caps = ""
  for i in 0...string.length
    if i.even?
      stag_caps << string[i].upcase
    elsif i.odd?
      stag_caps << string[i].downcase
    end
  end
  stag_caps
end

# JD's
def staggered_case(string)
  string.chars.map_with_index do |chr, idx|
    if chr =~ /[A-z]/ && idx.even?
      chr.upcase
    elsif chr =~ /[A-z]/ && idx.odd?
      chr.downcase
    else
      chr
    end
  end.join
end

def staggered_case(string, first_up = true)
  result = ''
  switch_up = first_up
  string.chars.each_with_index do |chr, idx|
    if switch_up
      result << chr.upcase
    else
      result << chr.downcase
    end
    switch_up = !switch_up
  end
  result
end

# Carlos'
def staggered_case(string)
  string.chars.map_with_index do |el, index|
  index.even? ? el = el.upcase : el = el.downcase
  end.join
end

def staggered_case(string, first_letter = :upper)
  if first_letter == :upper
    result = string.chars.map.with_index do |el, index|
      index.even? ? el = el.upcase : el = el.downcase
    end
  else
    result = string.chars.map.with_index do |el, index|
      index.odd? ? el = el.upcase : el = el.downcase
    end
  end
  result.join
end

# Vu's
#Initial solution
def staggered_case(str)
  uppercase = true
  characters = str.chars.map do |char|
    if uppercase
      uppercase = false
      char.upcase
    else
      uppercase = true
      char.downcase
    end
  end
  characters.join
end

# Refactored solution
def staggered_case(str)
  uppercase = false # set to true to have 1st letter be lowercase
  characters = str.chars.map do |char|
     (uppercase = !uppercase) ? char.upcase : char.downcase
  end
  characters.join
end

# Further Exploration
def staggered_case(str, first_letter_case = :upper)
  first_letter_case == :upper ? uppercase = false : uppercase = true
  characters = str.chars.map do |char|
    (uppercase = !uppercase) ? char.upcase : char.downcase
  end
  characters.join
end

# Franco Waisfeld's
def staggered_case(string, upper=true)
  result = ''
  string.chars.each do |character|
    case upper
    when true
      result << character.upcase
    when false
      result << character.downcase
    end
    upper = !upper
  end
  result
end



staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'