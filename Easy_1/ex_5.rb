=begin
Write a method that takes one argument, a postive integer, and returns a stirng of alternating 1s and 0s, always starting with 1. The length of the string 
should match the given integer.

input: integer
output: string

Intake an integer and return alternating 1s and 0s. The length of the string should match the given integer.

E: 6 => '101010'
9 => '101010101'

D: integer => string

A: the integer dictates the amount of time the string alternates, or the 0s print
intialize empty string object
  - print 1 and add to string
  - print 0 and add to string
  - 
=end

# def stringy(integer)
#   integer_string = ''
  
#     integer_string << '1'
    
#     integer_string << '0'
#   end
#   integer_string
# end

# LS solution
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? 1 : 0
    numbers << number
  end

  numbers.join
end

def string(size)
  number = []
  
  size.times do |index|
    number = index.even? 1 : 0
    numbers << number
  end

  numbers.join
end

def string(size)
  number = []

  size.times do |index|
    number = index.even? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6) #== '101010'
puts stringy(9) #== '101010101'
puts stringy(4)# == '1010'
puts stringy(7) #== '1010101'