def integer_to_string(integer)
integer.digits.reverse.join
end

def signed_integer_to_string(integer)
  case integer <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end