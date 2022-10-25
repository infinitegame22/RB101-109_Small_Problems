=begin pedac
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.
*************Problem***************************
Goal: 
initial input: floating point number
overall output: string that represents that angle in degrees, minutes and seconds

explicit requirements:
- You should use a degree symbol (°) to represent degrees,
 a single quote (') to represent minutes, and a double quote
  (") to represent seconds. 
A degree has 60 minutes, while a minute has 60 seconds.

implicit requirements:
- if input is 0 return 0
- if input is 360, can return 360 or 0
questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
dms(30) == %(30°00'00")
30 degrees with 0 minutes and 0 seconds
dms(76.73) == %(76°43'48")
76 degrees with .73 * 60 = 43.8, 43' --> .8 * 60 = 48 
dms(254.6) == %(254°36'00")
254 degrees with .6 * 60 = 36
dms(93.034773) == %(93°02'05")
93 degrees with .034773 * 60 = 2.08638 --> .08638 * 60
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
A. Main Method
  1. 
  2. 
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

DEGREE = "\xC2\xB0"

def dms(input)
  degree = 0
  minutes = 0
  seconds = 0

  degree = input.truncate
  temp_value = (input - degree) * 60
  minutes = temp_value.truncate
  seconds = ((temp_value - minutes) * 60).round(0)
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
