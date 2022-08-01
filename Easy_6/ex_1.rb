=begin
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.
=end
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
PERCENT = '%'
SECONDS_SYMBOL = '"'
MINUTES_SYMBOL = "'"

def dms(number) #=> 254.6
  degrees = number.floor # => 254
  number -= degrees #=> .6
  number *= MINUTES_PER_DEGREE # => 36.0
  minutes = number.floor #=> 36.0
  number -= minutes #=> 0
  seconds = number * SECONDS_PER_MINUTE # => 0
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end
   


p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")