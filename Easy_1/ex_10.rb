=begin
P - Input: 2 arguments (positive integer, boolean)
Output: integer (bonus for a given salary)
E - 
D - if/else conditional
A - 
Create a method, pass it two argument, pos integer and boolean
IF boolean == true, divide the salary by 2
STORE half salary integer in a variable bonus
ELSE bonus == 0
return bonus
=end

def calculate_bonus(salary, is_gettin_bonus)
  if is_gettin_bonus
    bonus = salary / 2
  else
    bonus = 0
  end
  bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000