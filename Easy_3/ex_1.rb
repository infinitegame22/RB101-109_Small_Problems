def user_input(variable)
  hash = {
    1 => '1st',
    2 => '2nd',
    3 => '3rd',
    4 => '4th', 
    5 => '5th' }
  puts "==> Enter the #{hash[variable]} number:"
  number = gets.chomp.to_i
  return number # perfect use case for a simple hash
end

def loop
  array = []
  for i in 1..5 do
    num = user_input(i)
    array << num
  end
  puts "==> Enter the last number:"
  last_number = gets.chomp.to_i
  contains = array.include?(last_number)
  output = ""
  contains ? output = "The number #{last_number} appears in #{array}." : output = "The number #{last_number} does not appear in #{array}."
  puts output
end

loop