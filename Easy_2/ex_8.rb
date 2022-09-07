

# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

=begin

P: input: user inputs integer
output: integer computed

Requirements:
- user chooses sum or product computation for their entered integer

E: >> Please enter an integer greater than 0:
   5
   >> Enter 's' to compute the sum, 'p' to compute the product.
   s
   The sum of the integers between 1 and 5 is 15.

D: integer --> string

A: 
Prompt user for an integer greater than 0
if integer is entered
  - prompt user for 's' to compute the sum, 'p' to compute the product
    - if 's' 
        - then add up the integers from 1 to integer and print the sum to console
    - if 'p'
        - then multiply the integers from 1 to integer and print the product to console
    - else
      - print an error message directing the user to enter correct input
else prompt the user to enter the correct input

=end

puts ">> Please enter an integer greater than 0:"
answer = gets.chomp.to_i

if answer >= 0
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp
  sum = 0
  product = 1
  
  if choice.downcase == 's' || choice.downcase == 'sum'
    (1..answer).each do |num|
      sum += num
    end
    puts "The sum of the integers between 1 and #{answer} is #{sum}."
  elsif choice.downcase == 'p' || choice.downcase == 'product'
    (1..answer).each do |num|
      product *= num
    end
    puts "The product of the integers between 1 and #{answer} is #{product}."
  else
    puts "Please enter 's' or 'p'."
  end
else
  puts "Please enter an integer greater than 0:"
end

# LS solution

def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end

# https://ruby-doc.org/core-3.1.2/Enumerable.html#method-i-inject