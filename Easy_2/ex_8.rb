puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

def sum(integer)
  Range.new(1, integer).to_a.sum
end

def product(integer)
  Range.new(1, integer).to_a.reduce(:*)
end

if operation.downcase == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum(integer)}."
elsif operation.downcase == 'p'
  puts "The product of the integers between 1 and #{integer} is #{product(integer)}."
else
  puts "Invalid entry. Please enter (s) or (p)."
end