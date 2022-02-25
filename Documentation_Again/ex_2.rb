require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

require 'date'

#wihout params Date#civil will return its default param as defined the Ruby standard work.
#https://ruby-doc.org/std lib

puts Date.civil           #-4712-01-01
puts Date.civil(2016)     #2016-01-01
puts Date.civil(2016, 5, 13) #2016-05-13

#puts Date.civil
-4712-01-01

#puts Date.civil(2016)
2016-01-01

#puts Date.civil(2016, 5)
2016-05-01


#puts Date.civil(2016, 5, 13)
2016-05-13