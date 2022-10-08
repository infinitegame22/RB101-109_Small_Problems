# =begin
# The following code prompts the user to set their own password
# if they haven't done so already, and then prompts them to login
# with that password. However, the program throws an error. What 
# is the problem and how can I fix it.

# Once I get the program to run without error, does it behave as
# expected? Verify that I am able to log in with my new password.
# =end

# password = nil

# def set_password
#   puts 'What would you like your password to be?'
#   new_password = gets.chomp
#   new_password
# end

# def verify_password(password)
#   puts '** Login **'
#   print 'Password: '
#   input = gets.chomp

#   if input == password
#     puts 'Welcome to the inside!'
#   else
#     puts 'Authentication failed.'
#   end
# end

# if !password
#   password = set_password
# end

# verify_password(password) # password is out of scope







password = nil

def set_password(password)
  puts 'What would you like your password to be?'
  password = gets.chomp
end

def verify_password(password)
  p password
  puts '** Login **'
  print 'Password: '
  input = gets.chomp
  p input
  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  set_password(password)
end

p verify_password(password)






















