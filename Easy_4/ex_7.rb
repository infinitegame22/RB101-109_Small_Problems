=begin
Integer constructor - type of method, creates a new object.
Class is a blueprint, use the blueprint with constructor.
Dog class with constructor
dog class has Name property
call constructor method, create new object
x = 'string' , created a string object
String#to_i is a method
blueprint give functionality
hash = Hash.new is the same as hash = {}
beauty of constructors - infinite methods
https://ruby-doc.org/core-3.0.2/Integer.html
Constructor does pre-processing
statically typed language - Java

input - String of digits (assume all numeric, and positive/negative
doesn't matter)
outputs - string to integer

1 * 10 ^ 0
2 * 10 ^ 1
3 * 10 ^ 2
4 * 10 ^ 3

1234

compare 
=end
def string_to_integer(string)
  reverse_chars_array = string.reverse.chars # => [1, 2, 3, 4]
  sum = 0

  reverse_chars_array.each_with_index {|element, index| sum += element.to_i * 10**index}
  sum
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570