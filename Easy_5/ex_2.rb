def time_of_day(minutes)
  #hours = minutes / 60
  #minutes -= 60 * hours
  hours, minutes = minutes.divmod(60)
  "#{'%02d' % (hours%24)}:#{'%02d' % minutes}"
end

# def time_of_day(minutes)
#   hours, minutes = minutes.divmod(60)
#   "#{'%02d' % (hours%24)}:#{'%02d' % minutes}"
# end

# def time_of_day(minutes)
#   hours, minutes = minutes.divmod(60)
#   "#{'%02d' % (hours%24)}:#{'%02d' % minutes}"
# end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

# https://stackoverflow.com/questions/56953233/negative-number-division-in-ruby