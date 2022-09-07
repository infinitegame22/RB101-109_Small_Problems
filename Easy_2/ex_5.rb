=begin
Write a program that will ask for user's name.  The program will then greet the user. If the user writes "name!" then the computer yells back to the uesr.

input: username
output: uppercase string

Goal: when using a '!' returns uppercase letters in the computer's response

E: What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

D: string --> upcase string

A: prompts for user input of a username
User inputs name
if the name has an exclamation mark
  -outputs a string in uppercase letters that greets the user
otherwise this will output a greeting to the user in mixed case.

=end

p "What is your name?"
answer = gets.chomp
if answer.include?('!')
  puts "HELLO #{answer.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{answer}."
end