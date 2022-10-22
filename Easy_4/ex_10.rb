=begin pedac

*************Problem***************************
Goal: add the + or - sign to each string object output based on the integers value
initial input: integer
overall output: string

explicit requirements:
- use `integer_to_string`
implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
A. Main Method
  1. use the integer_to_string method to return a string
  2. if the last element in the integer converted to a digits array is a - 
    a. return a string with a '-' in front of it
  3. when the element is 0, return 0
  4. otherwise add a + to the front of the string

***********SCRATCHPAD********** 

=end

def integer_to_string(integer)
  integer.digits.reverse.join
end

def signed_integer_to_string(integer)
  case integer <=> 0
  when -1 then '-' + integer_to_string(integer)
  when 0 then integer_to_string(integer)
  else        '+' + integer_to_string(integer)
  end
end


# def signed_integer_to_string(integer)
#   case integer <=> 0
#   when -1 then "-#{integer_to_string(-number)}"
#   when +1 then "+#{integer_to_string(number)}"
#   else         integer_to_string(number)
#   end
# end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'