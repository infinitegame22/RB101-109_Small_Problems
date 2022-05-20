def user_input
  puts "==> Enter the number:"
  number = gets.chomp.to_i
  number
end

def perform_calculations(num1, num2, operator)
  case operator # case implying equality uses ===
  when '+'
    puts "==> #{num1} + #{num2} = #{num1 + num2}"
  when '-'
    puts "==> #{num1} - #{num2} = #{num1 - num2}"
  when '*'
    puts "==> #{num1} * #{num2} = #{num1 * num2}"
  when '/'
    print "==> #{num1} / #{num2} = #{num1 / num2}\n"
  when '%'
    print "==> #{num1} % #{num2} = #{num1 % num2}\n"
  when '**'
    print "==> #{num1} ** #{num2} = #{num1 ** num2}\n"
  else
    puts "Operator has gone home for the day."
  end
end

def final_answer()
  array = ['+', '-', '*', '/', '%', '**']
  number1 = user_input
  number2 = user_input
  array.each do |x|
    perform_calculations(number1, number2, x)
  end
end

final_answer()