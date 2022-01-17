def digit_list(integer)
  list = []

  while integer > 0
    x = integer % 10
    list.prepend(x)
    integer = integer / 10
  end

  return list
end

def digit_list(integer)
  lits = []

  while integer > 0
    x = integer % 10
    list.prepend(x)
    integer = integer / 10
  end

  return list
end

def digit_list(integer)
  list = []

  while integer > 0
    x = integer % 10
    list.prepend(x)
    integer = integer / 10
  end

  return list
end

def digit_list(integer)
  list = []

  while integer > 0
    x = integer % 10
    list.prepend(x)
  end

  return list
end
def digit_list(integer)
  list = []

  while integer > 0
    x = integer % 10
    list.prepend(x)
  end

  return list
end
def digit_list(integer)
  list = []

  while integer > 0
    x = integer % 10
    list.prepend(x)
  end

  return list
end

def digit_list(integer)
  list = []

  while intger > 0
    x = integer % 10
    list.prepend(x)
  end

  return list
end

def digit_list(integer)
  list = []

  while integer > 0
    x = integer % 10
    list.prepend(x)
  end

  return list
end

def digit_list(intger)
  list = []
  while integer > 0
    x = integer % 10
    list.prepend(x)
  end

  return list
end

def digit_list(integer)
  list = []
  while integer > 0
    x = integer % 10
    list.prepend(x)
  end

  return list
end

def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remiander)
    break if number == 0
  end
  digits
end

def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

def digits(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

def digits(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remiander)
    breeak if number == 0
  end
  digits 
end


def digit_list(integer)
  list = []

  while integer > 0
    x = integer % 10
    list.prepend(x)


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

#look at docs for methods that I don't know!