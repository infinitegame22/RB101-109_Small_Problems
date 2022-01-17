# puts "What is the bill?"
# bill = gets.to_f

# puts "What is the tip percentage?"
# tip_percentage = gets.to_f / 100

# x = (bill * tip_percentage.to_f).round(1)
# puts "The tip is #{x}"
# puts "The total is #{ x + bill}"

print "What is the bill? "
bill = gets.chomp
bill = bill.to_f

print "What is the tip percentage? "
percentage = gets.chomp
percentage = percentage.to_f

tip = (bill * (percentage / 100)).round(2)
bill_adjusted = (tip + bill).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{bill_adjusted}"