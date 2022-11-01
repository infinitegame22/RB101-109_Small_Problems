# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

=begin
Goal: intake a floating point number that represents an angle between 0 and 360 and returns a string formatted to represent that angle in degrees, minutes and seconds.

input: floating point Integer
output: string with the degree symbol, ' for minutes and " for seconds

Rules: 
- DEGREE = "\xC2\xB0"
- degree has 60 minutes
- minute has 60 seconds
- use format to format the string correctly

E:

dms(30) == %(30°00'00")
30 is an even number with no minutes and no seconds
dms(76.73) == %(76°43'48")
76 degrees
0.73 * 60 minutes = 43.8 --> 43'
0.8 * 60 seconds = 48 seconds or "
dms(254.6) == %(254°36'00")
254 degrees
254.6 - 254 = .6
.6 * 60 = 36.0

dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

D: 
input: floating point Integer
intermediate: 
output: string with the degree symbol, ' for minutes and " for seconds

A:
- initialize degree symbol constant
- initialize variable second per degrees set equal to the result of multiplying seconds per minute by minutes per degree
- initialize variables degrees and minutes to the result of invoking `divmod` on the argument Integer and passing it the argument of 1
- multiply the minutes by 60 and assign back to minutes
- assign minutes and seconds to the result of invoking `divmod` and passing it the argument of 1
- multiply the seconds by 60 and reassign back to seconds
- format the degrees, minutes and seconds according to the answer
=end

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(float)
  total_seconds = (float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}'%02d'%02d", minutes, seconds))
end

p dms(30)        #== %(30°00'00")
p dms(76.73)     #== %(76°43'48")
p dms(254.6)     #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
p dms(0)         #== %(0°00'00")
p dms(360)       #== %(360°00'00") || dms(360) == %(0°00'00")


# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# # def dms(int)
# #   total_seconds = (int * SECONDS_PER_DEGREE).round
# #   degrees, minutes = int.divmod(1)
# #   minutes *= MINUTES_PER_DEGREE
# #   minutes, seconds = minutes.divmod(1)
# #   seconds *= SECONDS_PER_MINUTE
# #   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
  
# # end
# def dms(float)
#   degrees = float.to_i
#   minutes = (float % 1) * 60
#   seconds = (minutes % 1) * 60
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# puts dms(30)        #== %(30°00'00")
# p dms(76.73)     #== %(76°43'48")
# p dms(254.6)     #== %(254°36'00")
# p dms(93.034773) #== %(93°02'05")
# p dms(0)         #== %(0°00'00")
# p dms(360)       #== %(360°00'00") || dms(360) == %(0°00'00")

# # Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

# # You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

