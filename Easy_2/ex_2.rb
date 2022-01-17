# puts "Enter the length of the room in meters:"
# room_length = gets.chomp.to_i

# puts "Enter the width of the room in meters:"
# room_width = gets.chomp.to_i

# puts "The area of the room is #{room_length * room_width} square meters (#{room_length * room_width * 10.7639} square feet)."

SQMETERS_TO_SQFEET = 10.7639    

puts '==> Enter the length of the room in meters: '
length = gets.to_f

puts '==> Enter the width of the room in meters: '
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
    "square meters (#{square_feet} square feet)."