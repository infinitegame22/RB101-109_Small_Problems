=begin
input: integer1, integer2
output: addition, subtraction, multiplication, division, modulus and to the power of

=end

def addition(number1, number2)
  puts "=> #{number1} + #{number2} = #{number1 + number2}"
end

def subraction(number1, number2)
  puts "=> #{number1} - #{number2} = #{number1 - number2}"
end

def multiplication(number1, number2)
  puts "=> #{number1} * #{number2} = #{number1 * number2}"
end

def division(number1, number2)
  puts "=> #{number1} / #{number2} = #{number1 / number2 }"
end

def modulus(number1, number2)
  puts "=> #{number1} % #{number2} = #{number1 % number2}"
end

def power_of(number1, number2)
  puts "=> #{number1} ** #{number2} = #{number1 ** number2}"
end

puts "==> Enter the first number:"
num1 = gets.chomp.to_f
puts "==> Enter the second number:"
num2 = gets.chomp.to_f

addition(num1, num2)
subraction(num1, num2)
multiplication(num1, num2)
division(num1, num2)
modulus(num1, num2)
power_of(num1, num2)

#JD
def number?(num)
  num.to_i.to_s == num ||
  num.to_f.to_s == num ||
  num.to_i.to_s + '.' == num ||
  num.to_f.to_s + '0' == num
end

num1 = ''
loop do
  puts "Enter the first number:"
  num1 = gets.chomp
  if number?(num1)
    break num1 = num1.include?('.') ? num1.to_f : num1.to_i
  end
  puts "invalid entry"
end

num2 = ''
loop do
  puts "Enter the second number (can't be 0):"
  num2 = gets.chomp
  if number?(num2)
    num2 = num2.include?('.') ? num2.to_f : num2.to_i
    break num2 if num2 != 0
  end
  puts "Invalid entry"
end

operations = %w(+ - * / % **)

operations.each do |op|
  result = num1.send(op, num2)
  puts "==> #{num1} #{op} #{num2} = #{result}"
end