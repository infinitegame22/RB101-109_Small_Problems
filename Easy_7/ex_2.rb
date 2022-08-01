=begin
Write a method that takes a string, and then returns a hash
that contains 3 entries: one represents the number of char-
acters in the string that are lowercase letters, one the
number of characters that are uppercase letters, and one
the number of characters are neither.
input: string
output: hash

E:
'abCdef 123'  lowercase: a b d e f - 5, uppercase: C - 1, neither: 123  - 4

D: hash

A: intialize a new variable to hash with 3 key value pairs
  - uppercase: 0
  - lowercase: 0
  - neither: 0
- 
use a method to count the number of lowercase letters and store
it in a new variable
use a method to count the number of uppercase letters and
store it in a new variable


-------------------------------
Scratchpad
-----------------------
- String#count
  str.count"\\^A-Z"
  str.count"\\^a-z"
=end

# LS
UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0}

  string.chars.each do |char|
    if UPPERCASE_CHARS.include?(char) # does the constant array include the character
      counts[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end
  counts
end

def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/  }
  counts
end

=begin
This method is expected to return a hash of character counts.

In the first solution, we begin by intializing two constants 
  containing the uppercase and lowercase 
=end


letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

=begin
A `Regexp` holds a regular expression

The equal-tilde operator in ruby is the "match" operator. It
takes a regular expression on the left hand side and the string
to match on the right hand side. The expression:
=end
/or/ =~ "Hello World"

=begin
will return 7 because a match is found on index 7 of the string. 
index starts at 0
The expression:
=end
/abc/ =~ "Hello World"
# will return nil because there is no match.
# https://learnwebtutorials.com/what-is-the-equal-tilde-operator-in-ruby-mean

!=~ # matching not
=begin

=end