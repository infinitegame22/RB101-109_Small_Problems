=begin
Write a method that takes two arguments, a positve integer and a boolean, and calculates the bonus for a given salary.  If the boolean is `true`, the bonus should
be half of the salary.  If the boolean is `false`, the bonus should be `0`.

input: positive integer and boolean
output: integer

calculate the bonus based on the income of the input. the boolean given determines how much the bonus is.

E: 2800, true => 2800/2 => 1400
1000, false => 0 no bonus
50000, true => 50000/2 => 25000

D: integer, boolean => 

A: IF salary 
    - then divide the salary in half
  ELSE 
    - return 0

=end

def calculate_bonus(salary, bonusable)
  if bonusable
    salary / 2
  else
    0
  end
end

# LS solution

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000