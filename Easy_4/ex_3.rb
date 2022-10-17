=begin pedac

*************Problem***************************
Goal: use math to check if an input year is/was/will be a leap year
initial input: integer
overall output: boolean object

explicit requirements:
- leap year = year % 4 == 0
- leap year special = year % 100 == 0 AND year % 400 == 0
- input year will be greater than 0
implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
2016 --> 2016 % 4 ==0 --> true
2015 --> 2015 % 4 ==0--> false
2100 --> 2100 % 4 == 0 && 2100 % 400 == 0 --> false
2400 --> 2400 % 4 == 0 && 2400 % 400 == 0 --> true
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
integer -> boolean
************Algorithm*************************
A. Main Method
  1. if integer % 4 == 0 and integer % 400 == 0
    a. return true
  2. elsif integer % 4 == 0
    a. return true
  3. else return false


***********SCRATCHPAD********** 




=end

def leap_year?(integer)
  integer % 400 == 0 || (integer % 4 == 0 && integer % 100 != 0)
end

# def leap_year?(integer)
#   integer % 4 == 0 && integer % 400 == 0
# end

# # LS Solution
# def leap_year?(year)
#   (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
# end

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true