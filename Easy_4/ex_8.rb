=begin
https://en.wikipedia.org/wiki/Signed_number_representations
Signed number representations
 - signed integer, left most bit is only used to represent if
 there is a negative sign or not
 - use the other numbers to represent the digit
 - use the left most binary thing to represent sign
 2**7
 go from being able to represent 0-255 
=end
def string_to_integer(string)
  reverse_chars_array = string.reverse.chars # => [1, 2, 3, 4]
  sum = 0
  
  reverse_chars_array.each_with_index do |element, index| 
    if element != "+" || element != "-"
    sum += element.to_i * 10**index
  end
  sum
end

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100