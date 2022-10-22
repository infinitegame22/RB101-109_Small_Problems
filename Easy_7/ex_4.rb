 # Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

=begin pedac

*************Problem***************************
Goal: intake a string, and return a new string in which every alpha uppercase letter is lowercased and every lowercase letter is upcased.
initial input: string
overall output: new string (with cases swapped)

explicit requirements:
- any non-alphanumeric char's are left alone (unchange)
- any alpha char that is uppercase in original string object is converted to lowercase and vice versa
- cannot use `swapcase` method


implicit requirements:
- spaces are maintained just like `-`'s  or any other non alphanumeric character
questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
('CamelCase') == 'cAMELcASE'
  ^               ^ --> changed/swapped
   ^               ^ --> 'a' --> 'A'
'Tonight on XYZ-TV' == 'tONIGHT ON xyz-tv'
 ^                      ^ --> 'T' --> 't'
        ^                      ^ --> space kept same

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
input: string
intermediate: array of chars for iteration --> new string
output: string swapcased

************Algorithm*************************
A. Main Method
input: string, `string`
  1. intialize a new string object `swapcase_string`
  2. transform the string into an array of characters --> ['C', 'a'...
  3. iterate over the array of characters 
    a. if character is alphanumeric
      i. if character upcased is equivalent to character? then downcase and push to `swapcase_string`  --> 'C' == 'C'.upcase, yes, then C.downcase >> swapcase_string
      ii. or character downcased is equivalent to character then upcase and push the changed character into the `swapcase_string`
    b. otherwise in the case of non - alphanumeric characters
      i. push the character in the `swapcase_string`
  4. return swapcase_string

=end

def swapcase(string)
  swapcase_string = ''

  string.chars.each do |char|
    if char.match?(/[A-Za-z]/)
      if char.upcase == char
        swapcase_string << char.downcase
      else
        swapcase_string << char.upcase
      end
    else
      swapcase_string << char
    end
  end
  swapcase_string
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'