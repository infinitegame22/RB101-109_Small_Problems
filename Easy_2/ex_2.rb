=begin
P - Input: ask user for length and width
Output: area of romm in square meters and feet
E - 
D - 
A - 
Ask user for input of dimensions of room
Calculate area of room - multiply length by width
Calculate this total and multiply by 10.7639
=end
def room_dimensions(length, width)
    length * width
end

def meters_to_feet(area)
    area * 10.7639
end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

puts "The area of the room is #{room_dimensions(length, width)} square meters (#{meters_to_feet(room_dimensions(length, width))} square feet)."