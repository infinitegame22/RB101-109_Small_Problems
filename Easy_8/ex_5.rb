=begin
Write a method that returns a list of all substrings of a
string that are palindromic. That is, each substring must 
consist of the same sequence of characters forwards as it
does backwards.  The return value should be arranged in
the same sequence as the substrings appear in the string.
Duplicate palindromes should be included multiple times.

Use the substrings method.

E:
'abcd' = []
'madam' = ['madam', 'ada']
=end

def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end
=begin
helper method `palindrome?` to test whether any given
string is a palindrome.  Note that we need to verify 
the size of the string as well as its reversibility.
=end