=begin
Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

hints:
- Ruby's Date class may be helpful here.
- Look at how to initialize a Date object
- Look at the friday? method

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2


*************Problem***************************
Goal: return the number of friday the 13th's in a given year
initial input: integer (year)
overall output: integer (amount of Friday the 13th's)

explicit requirements:
- assume the year is greater than 1752, which means that every four years is a leap year
implicit requirements:
- In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400 (ie 2100 is not a leap year, but 2400 is)
- use Ruby's date class and friday? method -- require 'date'

implicit requirements:
- pay attention leap years because that will affect the amount of days in a year
questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
p friday_13th(2015) == 3
2015, not a leap year, gregorian_leap?
for every 13th of the month, is it a friday?
  if true push into Array
    count the number of elements in array and that will how many Friday the 13ths exist in a year
p friday_13th(1986) == 1
p friday_13th(2019) == 2
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
A. Main Method
  1. create a starting point by using the date class and passing it the year with the first month and first day
  2. create an ending point by using the date class and passing it the year with the last month and last day
  3. iterate over a range from starting to ending points
    a. selecting for fridays and days that are 13
    b. count the number of values in the selected Array
    c. return the count


***********SCRATCHPAD********** 

=end

require 'date'

def friday_13th(year)
  start = Date.new(year, 1, 1)
  ending = Date.new(year, 12, 31)

  (start...ending).select do |d|
    d.friday? && d.day == 13
  end.count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

=begin
year
    - month
      - days
        - check if day number == 13 and day_of_week == 'friday'
=end