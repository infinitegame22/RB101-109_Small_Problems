=begin
Write method that returns true if the string passed as an
argument is a palindrome, false otherwise.

This time, method should be case insensitive

=end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(str)
  test = str.gsub(/[^\w]/, "").downcase
  palindrome?(test)
end

