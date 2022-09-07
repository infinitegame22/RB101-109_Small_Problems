MINUTES_PER_DAY = 1440

def after_midnight(formatted_time)
  array = formatted_time.split(':')
  hours, minutes = array
  minutes = hours.to_i * 60 + minutes.to_i
  minutes %= MINUTES_PER_DAY
end

def before_midnight(formatted_time) # => 12:34
  array = formatted_time.split(':') # ['12', '34']
  hours, minutes = array # = > hours = '12', minutes ='34' destructuring
  # https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment
  minutes = hours.to_i * 60 + minutes.to_i # => 754
  minutes = MINUTES_PER_DAY - minutes# =>  686
  minutes %= MINUTES_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

# midnight is 0, after midnight, add minutes
# before midnight could be 0 or 24, 0, 23, 22, 21
# modulus works with 24, remainder always
# Ruby divides negative integers - other languages dividing
# negative outputs different results
# clock, 12 is straight up, origin of 12 same starting point
# clockwise (adding - origin 0), counterclockwise
# (subtracting - origin 24)
# integer modulus 12, 0 % 12 = 0 - clockwise
# 12 % 12 = 0  - counterclockwise

array.map(&:to_i) #=> high order function

x = 5 
&x # => give me the address of this, use this address