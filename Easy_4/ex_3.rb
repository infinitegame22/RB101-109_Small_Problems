=begin
Write a method that takes any year greather than 0 as input,
and returns true if the year is a leap year, or false if it
is not a leap year.

E:
leap_year?(2016) --> true
leap_year?(1) --> false
=end

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else 
    year % 4 == 0
  end
end

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year & 100 == 0
    false
  else
    year % 4 == 0
  end
end

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end