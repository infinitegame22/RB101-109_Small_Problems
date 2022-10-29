=begin
As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

Goal: intake a string in time format and return the number of minutes before and after midnight in an integer form.
input: string
output: integer

Rules: 
- do not use Date and Time methods
- return a value in the range `0..1439`
- if the number of minutes is positive, the time is after midnight
- if the number of minutes is negative, the time is before midnight
- disregard daylight savings and standard time
E:
before_midnight('00:00') == 0
00:00 being midnight so returns 0 minutes
after_midnight('00:00') == 0
00:00 being midnight so returns 0 minutes
after_midnight('12:34') == 754
60 minutes * 12 hours + 34 minutes == 754
before_midnight('12:34') == 686
60 minutes * 11 hours + 26 minutes == 686
after_midnight('24:00') == 0
24:00 being midnight so 0 minutes is returned
before_midnight('24:00') == 0
24:00 being midnight so 0 minutes is returned

A:
input: string `time_string` --> '12:34'
after_midnight
- set constant MINUTES_PER_DAY = 1440
- set constant MINUTES_PER_HOUR = 60
- split the string on the ':' --> ["12", "34"] and save in two variables hours and minutes
- convert the string represented by hours variable to an integer and multiply the hours by MINUTES_PER_HOUR and save back into the hours variable
- convert the string represented by the minutes variable to an integer and add to hours variable
- return the total

before_midnight
- split the string on the ':' --> ["12", "34"] and save in two variables hours and minutes
- convert the string represented by hours variable to an integer and multiply the hours by MINUTES_PER_HOUR and save back into the hours variable
- convert the string represented by the minutes variable to an integer and add to hours variable
- add the hours plus the minutes and subtract 1440 from it
- return the inverse of the answer
=end
MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def after_midnight(time_string)
  hours, minutes = time_string.split(':')
  hours = hours.to_i * MINUTES_PER_HOUR
  return 0 if hours + minutes.to_i == 0
  MINUTES_PER_DAY - hours + minutes.to_i
end

def before_midnight(time_string)
  hours, minutes = time_string.split(':')
  hours = hours.to_i * MINUTES_PER_HOUR
  return 0 if hours + minutes.to_i == 0
  -(hours + minutes.to_i - 1440)
end



p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0














