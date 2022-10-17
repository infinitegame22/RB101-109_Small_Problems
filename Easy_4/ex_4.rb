=begin
=begin pedac

*************Problem***************************
Goal: 
initial input: 
overall output: 

explicit requirements:

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
  1. if integer is greater than or equal to 1752 and divisible by 4
    a. return true
  2. elsif integer is less than 1752
    a. if integer % 4 is equivalent to 0 and integer 
  3.
B Helper Method 1
  1.
  2.
  3.
C. Helper Method 2
  1.
  2.
  3.

***********SCRATCHPAD********** 

=end

def leap_year?(integer)
  if integer <= 1752 && integer % 4 == 0
    true
  elsif integer > 1752 && integer % 400 == 0 || (integer % 4 == 0 && integer % 100 != 0)
    true
  else
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true