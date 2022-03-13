# def digit_list(integer)
#   list = []

#   while integer > 0
#     x = integer % 10
#     list.prepend(x)
#   end
# end


# def digit_list(number)
#   number.to_s.chars.map(&:to_i)
# end

# def digit_list(num)
#   list = num.to_s.chars.map{|string| string.to_i}
# end

def digit_list(integer)
  integer.digits.reverse
end

def digit_list(integer)
  integer.digits.reverse
end

def digit_list(integer)
  integer.digits.reverse
end

def digit_list(integer)
  integer.digits.reverse
end

def digit_list(integer)
  integer.digits.reverse
end

def digit_list(integer)
  integer.digits.reverse
end


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

#look at docs for methods that I don't know!