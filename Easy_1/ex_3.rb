def digit_list(integer)
  list = []

  while integer > 0
    x = integer % 10
    list.prepend(x)
    integer = integer / 10
  end

  return list
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

#look at docs for methods that I don't know!