value = 1
while value <= 99
  if value.even?
    puts value
  end
  value += 1
end

# refactored

value = 1

while value <= 99
  puts value if value.even?
  value += 1
end