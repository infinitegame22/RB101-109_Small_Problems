=begin
Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

=begin pedac

*************Problem***************************
Goal: takes a year as input and returns century. return value should be a string with the appropriate suffix.

initial input: integer
overall output: string

explicit requirements:
- new centuries begin in years that end with `01`
  - 1901 - 2000

implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
2000 --> 2000/100 = 20 + 'th' --> '20th'
1965 --> 1965/100 = 19 + 1 = 20 + 'th' --> '20th' 
256 --> 256 / 100 = 2 + 1 =3 + 'rd' --> '3rd'
5 --> '1st'
10103 --> 102nd
1, 21, any century ending in 1 - 'st'
2 - 'nd'
3 - 'rd'
4-20, any century ending in 0 - 'th'

*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
string --> case statement --> string addon
************Algorithm*************************
A. Main Method
  1. initialize variable to length_of_century to be 100 years 
  2. divide integer argument by integer object referenced by length_of_century
    a. add 1
    b. save in variable `century`
  3. create a conditional statement that pertains to century
    a. if the 
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

TEENS = ['11', '12', '13', '14', '15', '16', '17', '18', '19']

def century(integer)
  if integer <= 99
    return '1st'
  elsif integer.to_s.slice(-2, 2) == '00'
    return integer = (integer/100).to_s + 'th'
  else
    integer = integer/100 + 1
  end
  string_int = integer.to_s
  
  if integer >= 4 && integer <= 20
    string_int += 'th'
  elsif TEENS.include?(string_int.slice(-2, 2))
    string_int += 'th'
  elsif string_int.slice(-1) == '2'
    string_int += 'nd'
  elsif string_int.slice(-1) == '3'
    string_int += 'rd'
  elsif  string_int.slice(-1) == '1'
    string_int += 'st'
  else
    string_int += 'th'
  end

end

# Thomas

TEENS = ['11', '12', '13', '14', '15', '16', '17', '18', '19']

def century(year)

  if year % 100 == 0
    century = year / 100
  else
    century = (year / 100) + 1
  end

  century = century.to_s

  if TEENS.include?(century.slice(-2, 2))
    century << 'th'
  elsif century[-1] == '1'
    century << "st"
  elsif century[-1] == '2'
    century << 'nd'
  elsif century[-1] == '3'
    century << 'rd'
  else
    century << 'th'
  end
   
  century
end 

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'