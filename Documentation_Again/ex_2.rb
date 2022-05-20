# require 'date'

# puts Date.civil
# puts Date.civil(2016)
# puts Date.civil(2016, 5)
# puts Date.civil(2016, 5, 13)

# require 'date'

# #wihout params Date#civil will return its default param as defined the Ruby standard work.
# #https://ruby-doc.org/std lib

# puts Date.civil           #-4712-01-01
# puts Date.civil(2016)     #2016-01-01
# puts Date.civil(2016, 5, 13) #2016-05-13

# #puts Date.civil
# -4712-01-01

# #puts Date.civil(2016)
# 2016-01-01

# #puts Date.civil(2016, 5)
# 2016-05-01


# #puts Date.civil(2016, 5, 13)
# 2016-05-13

# # Ruby code for DateTime.civil() method

# # loading library
require 'date'

# #declaring DateTime value
date_a = DateTime.civil(2019, 8, 10, 4, 10, 9)

# # declaring DateTime value
date_b = DateTime.civil(2019, 8, 10.5)

# # declaring DateTime value
date_c = DateTime.civil(2019, 8, 10, 4, 10, 9, Rational(4, 24))

# civil method
puts "DateTime civil form: #{date_a}\n\n"

puts "DateTime civil form : #{date_b}\n\n"

puts "DateTime civil form : #{date_c}\n\n"
