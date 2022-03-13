# value = 1
# while value <= 99
#   puts value
#   value += 2
# end

# # arr = (1..99)
# # 1.upto(99) { |i| print i}

# numbers = []

# 1.upto(99) {|i| numbers << i}

# numbers.each do |num|
#   puts num if num.odd?
# end

# numbers = []

# 1.upto(99) {|i| numbers << i}

# numbers.each do |num|
#   puts num if num.odd?
# end

# numbers = []

# 1.upto(99) {|i| numbers << i }

# numbers.each do |num|
#   puts num if num.odd?
# end

# numbers = []

# 1.upto(99) {|i| numbers << i}

# numbers.each do |num|
#   puts num if num.odd?
# end

# numbers = []

# 1.upto(99) {|i| numbers << i}

# numbers.each do |num|
#   puts num if num.odd?
# end 

# numbers = (1..99).to_a

# numbers.select! {|num| num.odd? }

# puts numbers

# numbers = (1..99).to_a

# numbers.select! {|num| num.odd?}
# puts numbers

# numbers = (1..99).to_a

# numbers.select! { |num| num.odd?}
# puts numbers

# numbers = (1..99).to_a
# numbers.select! { |num| num.odd? }
# puts numbers

# numbers = (1..99).to_a
# numbers.select! {|num| num.odd? }
# puts numbers
#recursion
def odds(num)
  return if num == 0
  odds(num - 1)
  puts num if !num.even?
end

odds(99)

def odds(num)
  return if num == 0
  odds(num - 1)
  puts num if !num.even?
end

odds(99)

#using a for loop
for number in (1...100)
  if number % 2 == 0
    next
  else
    puts number
  end
end

numbers = (1..99).to_a
numbers.each{|num|puts num if num.odd?}

numbers = (1..99).to_a
numbers.each { |num| puts num if num.odd? }

numbers = (1..99).to_a
numbers.each { |num| puts num if num.odd? }

numbers = []
1.upto(99) {|i| numbers << i}
numbers.select{|num| puts num if num.odd?}

array = (0..99).to_a
puts array.select {|i| i.odd?}

a = []
0.upto(99) { |i| i % 2 != 0 ? a << i : nil }

array = (0..99).to_a
puts array.select {|i| i.odd?}

a = []
0.upto(99) { |i| i % 2 != 0 ? a << i : nil }
puts a

1.upto(99) do |i|
  i.odd? ? (puts i) : nil
end

1.step(to: 99, by: 2) {|i| puts i}

puts Array.new(100) {|i| i}.select { |num| num.odd? }

def numbers(range)
  range.each {|x| puts x if x.odd?}
end

numbers(1..99)

def numbers(range)
  range.each {|x| puts x if x.odd?}
end

numbers(1..99)

def numbers(range)
  range.each {|x| puts x if x.odd?}
end

numbers(1..99)