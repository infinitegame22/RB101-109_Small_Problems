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

integer_strings = { 0 => "0", 1 => "1" ...,4 => "4" }
arr = [4,3,2,1]
arr.each_with_index do |integer, index|
  arr[index] = integer_strings[integer] => "2" 
  # ["4", "3", "2", "1"].
end 
arr. join
#crfeate a hash where key is the integer and value is the 
# then figure out how to get th string value associated 
# with the integer  

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100