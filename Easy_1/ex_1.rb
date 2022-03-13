def repeat(string, integer)
  integer.times do
    puts string
  end
end

repeat('Hello', 3)

=begin
P Input: string, times_printed
OUtput: Printing the string times_printed times

E - print the string hello 3 times on different lines
Does the positive integer include 0?
If string is dragon and integer is 0, call repeat method and 
no output
D - string
A - accept the number of times we want to print string in method
print string as many 
x * print string
--slow down through the problem, PEDAC is powerful pyramid.
C
=end

def repeat(string, times_printed)
  times_printed.times { puts string }
end
repeat('Hello', 3)
repeat('Dragon', 0)