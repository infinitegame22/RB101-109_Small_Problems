=begin
leap year happens 1 every 4 years - only factors of 4
if year is evenly divisible by 4 and not divisible by 100
  then leap year
elsif year is evenly divisivle by 400
  then leap year
else
  not leap year, puts false
=end

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    return true
  end
  return year % 100 == 0 && year % 400 == 0
end




puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true