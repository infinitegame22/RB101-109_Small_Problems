def user_input
  print "Please write word or multiple words: "
  str = gets.chomp
  str
end

def char_count(str)
  count = 0
  for x in str.split(' ')
    count = x.length + count
  end
  puts "There are #{count} characters in \"#{str}\"."
end

def call_methods
  char_count(user_input)
end

call_methods