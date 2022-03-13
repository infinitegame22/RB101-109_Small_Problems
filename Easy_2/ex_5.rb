print "What's your name? "
name = gets.chomp

name.end_with?("!") ? (puts "HELLO #{name.chop.upcase}. WHY ARE YOU SCREAMING?")
                      (puts "Hello #{name}.")

puts "What is your name?"
  name = gets.chomp
  if name == 'name!'
    puts "Don't play games with me! Your real name?!"
  else
    puts "Greetings #{name}!"
  end

  # program that will ask for user name
  # return: greet the user
  # if the usr writes "name!" then the computer yell back to the usr!
  # use STring#chomp or String#chop

  puts "What is your name?"
  name = gets.chomp
  if name.end_with?('!')
    name = name.chop.upcase

    def prompt (x)
      puts "=> #{x}"
    end

    prompt("What is your name?")
    name = gets.chomp
    if name.chars.include?("!")
      name.gsub!("!", ".")
      prompt("HELLO #{name.upcase} WHY ARE WE SCREAMING?")
    else
      prompt("Hello #{name}.")
    end

    puts "What is your name?"
    name = gets.chomp!

    if name[-1] == '!'
      name = name.chop!
      puts("HELLO #{name.upcase}. WHY ARE WE SCREAMING?")
    else
      puts("Hello #{name}.")

puts "What is your name?"
name = gets.chomp.capitalize

# Slightly different approach using regex.

if /!/ =~ name
  name.upcase!.chop!
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end.

puts "What is your name?"
name = gets.chomp

def scream?(word)
  word.end_with?('!') ? "HELLO #{word.upcase.chop}. WHY ARE WE SCREAMING?"
end

p scream?(name)

def greeting()
  puts "What is your name?"
  name = gets.chomp.to_s
  if name.include?('!')
    puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}"
  end
end

greeting()

print "What is your name?"
name = gets.chomp

should_yell = !name.delete_suffix!('!').nil?
greeting = "Hello #{name}."

if should_yell
  greeting = "#{greeting} WHY ARE WE SCREAMING?".upcase
end

puts greeting

print "What is your name?"
name = gets.chomp

should_yell = !name.delete_suffix!('!').nil?
greeting = "Hello #{name}."

if should_yell
  greeting = "#{greeting} WHY ARE WE SCREAMING?".upcase
end

puts greeting

print "What is your name?"
name = gets.chomp

should_yell = !name.delete_suffix('!').nil?
greeting = "Hello #{name}."

if should_yell
  greeting = "#{greeting} Why are we screaming?"
end

puts greeting

print "What is your name?"
name = gets.chomp.downcase

if name.chop == name.chomp("!")
  puts "HELLO #{name.chop.upcase}. WHY AE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end

def ask_name
  print "What is your name? "
  name = gets.chomp

  case name
  when "#{name.chop}!"
    puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}."
  end
end

puts ">> What is your name?"
name = gets.chomp

if name.end_with?('!')
  puts ">> HELLO #{name.chop.upcase}!!! WHY ARE WE SCREAMING?"
else
  puts ">> Hello #{name}."
end

Kernel.puts("What is your name?")
name = Kernel.gets().chomp!()

if name.end_with?("!")
  name.chop!()
  Kernel.puts("HELLO, #{name.upcase()}. WHY ARE WE SCREAMING?")
else
  Kernel.puts("Hello, #{name.capitalize()}")
end

#String#delete_suffix! helps take care of two actions at once:
# Check if 'name' ends with '!'
# - If so, delete the '!' so we don't print it

def greeting(name)
  return "HELLO #{name.upcase}. WHY ARE WE SCREAMING?" if name.delete_suffix!("!")
   "Hello #{name}."
end

print "What is your name?"
name = gets.chomp.strip # Disregard new lines and whitespaces

puts greeting(name)

#Why does it work?
# Because #delete_suffix! returns its caller if "!" is found, 

def yelling
  puts "What's your name?"
  name = gets.chomp
  if name.chars.last == '!'
    puts "HI #{name.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "hi #{name}"
  end
end

def yelling puts "What's your name?"
  name = gets.chomp
  if name.chars.last == '!'
    puts "HI #{name.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "hi #{name}"
  end
end


print 'What is your name '
name = gets.chomp

puts name.end_with('!') ? "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"

def greet(name)
  puts 'Hello #{name}.'
end

def shout_greet(name)
  name.chop!
  puts 'HELLO #{name.upcase}'

  def greet(name)
    puts 'Hello #{name}.
    
    '