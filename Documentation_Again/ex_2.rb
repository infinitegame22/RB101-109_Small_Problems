require 'date' # won't work without this

puts Date.civil # -4712-01-01
puts Date.civil(2016) # 2016-01-01
puts Date.civil(2016, 5) # 2016-05-01
puts Date.civil(2016, 5, 13) # 2016-05-13

=begin
The documentation for `Date::civil` (note that it is a class
method) show that its signature is:

civil([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date

This signature uses `[]` to show that all of the arguments
are optional. 


=end