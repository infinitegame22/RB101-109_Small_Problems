=begin
P: input - year
output - a string that begins with the century number and ends 
with `st`, `nd`, `rd`, or `th`
Rules: 
- new centuries begin in years end with `01`
- implicit rule - able to take on future years

E - 

D: 

-st: 1, 
-nd: 2, 
-rd: 3
-th: 4, 5, 6, 7, 8, 9, 0

A -
Case last digit of integer
 When 1 add - st
 When 2 add - nd
 When 3 add -rd
 Else add -th

 
=end

# def century(year)
#   ary = year.divmod(100)
#     if ary.last == 0
#       temp = ary.first
#     elsif ary.last >= 1
#       temp = ary.first + 1
#     end

# if year%100 == 0

# year&100 == 1

def century(year)
  arr = year.divmod(100) # divmod returns an array containing the quotient
  temp = year % 100 
 if arr.last == 0
   temp = arr.first
 elsif arr.last >= 1
   temp = arr.first + 1
 end

 p digits_array = temp.digits
 first = digits_array[0]

 p temp = temp.to_s


 return temp << 'th' if temp.end_with?('11', '12', '13')

 case first 
 when 1
   temp << 'st'
 when 2
   temp << 'nd'
 when 3
   temp << 'rd'
 else
  temp << 'th'
 end

=begin
 https://www.geeksforgeeks.org/ruby-integer-divmod-function-with-example/

 Syntax: (number1).divmod(number2)

 Parameter: The function takes two numbers, number1 and number2
 whose integer division and remainder is returned.

 Return Value: The function returns the integer division value
and the remainder.
=end

def century(year)
  arr = year.divmod(100)
  temp = year % 100
  if arr.last == 0
    temp = arr.first
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
century(100000) == ''