=begin

=end

def ascii_value(string)
  sum = 0
  string_array = string.chars
  string_array.each do |char|
    sum += char.ord
  end
  sum
end

def ascii_value(string)
  sum = 0
  string_array = string.chars
  string_array.each do |char|
    sum += char.ord
  end
  sum
end

def ascii_value(string)
  sum = 0
  string_array = string.chars # => ['9', '8', '4']
  string_array.each do |char|
    sum += char.ord # => converts how exactly?
  end
  sum
end


puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0