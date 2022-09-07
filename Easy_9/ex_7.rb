=begin
Write a method that takes a first name, a space, and a last
name passed as a single string argument, and returns a string
that contains the last name, a comma, a space, and the first
name.

Write a method that intakes a string with the first name and
then the last name with a space in between. It returns the
string with the last name then the first name separated by
a comma like for alphabetizing names by last name.

input: string
output: string

E: 'Amy Dripchak' == 'Dripchak, Amy'

D: string into array
concatenate and reverse

A: split string into words and store in an array
reverse the array
add a comma inbetween
return new array object
how do i convert array to string?
=end
def swap_name(first_name_last_name)
  first_name_last_name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'