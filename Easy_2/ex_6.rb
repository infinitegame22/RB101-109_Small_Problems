=begin
Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

initialize empty array
starting at one, iterate through the range
if the integer is odd, add it to your array
otherwise skip over it.
output each odd integer to the console
=end

def print_odd_num(begin_int, end_int)
  array = []
  (begin_int..end_int).each do |num|
    if num.odd?
      array << num
    end
  end
  puts array
end

puts print_odd_num(1, 99)

# LS solution

value = 1
while value <= 99
  puts value
  value += 2
end

value = 1
while value <= 99
  puts value
  value += 2
end

value = 1
while value <= 99
  puts value
  value += 2
end

