=begin
Mad libs are a simple game where I create a story template
with blanks for words. Then construct a list of words and
place them into the story, creating an often silly or funny
story as a result.

Create a simple mad-lib program that prompts for a noun, a
verb, an adverb, and an adjective and injects those into a
story that I create

input: user input - string
output: story string

E: 
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

D: 
A: get user input and store in 4 variables

=end

puts "Enter a noun:"
noun = gets.chomp
puts "Enter a verb:"
verb = gets.chomp
puts "Enter an adjective:"
adjective = gets.chomp
puts "Enter an adverb:"
adverb = gets.chomp

puts "What in the #{adjective} #{noun} #{verb} did you do #{adverb}?"
