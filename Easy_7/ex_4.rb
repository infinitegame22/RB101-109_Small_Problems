=begin
Write a method that takes a string as an argument and returns 
a new string in which every uppercase letter is replaced by
its lowercase version, and every lowercase letter by its upper-
case version. All other characters should be unchanged.

  I may not use `String#upcase`; write my own version of this
  method.

input: string
output: string

E:
'CamelCase' == 'cAMELcASE'

D: string
A: 
iterate over string
adjust 
how do I pick the opposite case?

=end

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

=begin
In our solution, we iterate through each character in the
string passed into `swapcase`. If the character is lowercase
`(/[a-z]/)`, we make it uppercase; if it is uppercase `([A-Z]/)`, 
we make it lowercase. For all other characters, we do nothing.

Each character is then mapped to a new array and assigned to
`characters` together into a new string and return that value.


=end

# Greg's 
def swapcase(str)
  new_str = str.chars.map do |letter|
    if (letter.ord > 96) && (letter.ord < 123)
      letter.upcase
    elsif (letter.ord > 65) && (letter.ord < 91)
      letter.downcase
    else
      letter
    end
  end
  new_str.join
end

# Lucas'

LOWERCASE = ('a'..'z')
UPPERCASE = ('A'..'Z')

def swapcase(string)
  string.chars.each_with_object("") do |character, empty_string|
    empty_string << case character
    when LOWERCASE then character.upcase
    when UPPERCASE then character.downcase
    else character
  end
end

# Brenno

def swapcase(str)
  str.chars.map {|chr| chr == chr.downcase ? chr.upcase : chr.downcase}.join
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'