def tip(tip_percentage, bill)
  tip_percentage.to_f / 100 * bill
end

def total(tip_percentage, bill)
  tip(tip_percentage, bill) + bill
end

puts "What is the bill?"
bill = gets.chomp.to_i

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_i

puts "The tip is $#{tip(tip_percentage, bill)}"
puts "The total is $#{total(tip_percentage, bill)}"