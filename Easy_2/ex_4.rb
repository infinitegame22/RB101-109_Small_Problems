print "What is your age? "
current_age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

years_working_left = (retirement_age - current_age).to_i
t = Time.now #current time
retirement_year = t.year + years_working_left
retirement_year = retirement_year.to_i

puts "It's #{t.year}. You will retire in #{retirement_year}."
puts "You only have #{years_working_left} years of work to go!"