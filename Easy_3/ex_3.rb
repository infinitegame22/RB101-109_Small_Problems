=begin
Write a program that asks user for input of word/multiple words
which returns the number of characters

Rules:
- spaces don't count as characters


=end

p 'Please write word or multiple words: '
answer = gets.chomp
count_of_chars = answer.delete(' ').size
puts "There are #{count_of_chars} characters in \"#{answer}\"."

answer.delete(' ').size
answer.delete(' ').size
answer.delete(' ').size