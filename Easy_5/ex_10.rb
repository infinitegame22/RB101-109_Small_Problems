# Write a method that will take a short line of text, and print
# it within a box.

=begin
A: Make the computer output a certain message in a certain
set of lines.
Line 1- 
Line 2
Line 3-
Line 4- 
Line 5- 
=end
def print_in_box(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end


print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

print_in_box('hello')
+-------+
|       |
| hello |
|       |
+-------+

=begin
This is a fairly straightforward solution. To simplify matters,
we start out by setting `horizontal_rule` and `empty_line` to 
appropriate values for the top and bottom 2 lines of the box.
The expression `'-' * (message.size + 2)` simply creates a string
of `message.size + 2` hyphens; combined with the `+` at the
beginning and end of the string, this is just wide enough to 
draw the horizontal lines while leaving room for one blank on
either side of the message.
=end
