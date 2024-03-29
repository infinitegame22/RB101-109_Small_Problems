=begin
A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

Goal: intake an integer and return the next featured number that is greater than the number
input: integer
output: integer

Rules:
- featured number is a multiple of 7
- featured number's digits occur exactly once each
- featured number must be odd
- return an error message if there is no next featured number
E: 
featured(12) == 21
21 > 12, is a multiple of 7, 3 * 7 = 21 and is odd
featured(20) == 21
21 > 20, is a multiple of 7, 3 * 7 = 21 and is odd
featured(21) == 35, 
35 > 21, is a multiple of 7, 5 * 7 = 35 and is odd
28 is 7 * 4, but is not odd
featured(997) == 1029
1029 > 997, has all unique digits and is odd and a multiple of 7
featured(1029) == 1043
1043 > 1029, has all unique digits and is odd and multiple of 7
featured(999_999) == 1_023_547
1023547 > 999999, has all unique digits and is odd and mult. of 7
featured(999_999_987) == 1_023_456_987

D: 
input: integer
intermediate: incrementing by 7 from input integer
output: integer, or error message

A:
input: integer `int` >> 21
- return input number if the number modulus 7 is equivalent to 0 and is odd and if the unique digits are equivalent to the digits of the number
- if num % 7 is equivalent to 0
  - add 7 to the num
  




=end


def feature(num)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fullfills those requirements.'
end

def featured(num)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq = number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
  




def featured(int)
  for num in (int + 1...9_999_999_999)
    return num if num.odd? && num % 7 == 0 && num.digits == num.digits.uniq
  end
  "There is no possible number that fulfills those requirements" 
end

def featured(number)
  loop do
    number += 1

    if number % 7 == 0 && number.odd? && number.digits.uniq == number.digits
      return number
    elsif number >= 9_876_543_210
      break end
    end
  end
  'No possible number exists.'
end

p featured(12)          == 21
p featured(20)          == 21
p featured(21)          == 35
p featured(997)         == 1029
p featured(1029)        == 1043
p featured(999_999)     == 1_023_547
p featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements