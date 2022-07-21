=begin
https://launchschool.com/exercises/e268eab0

The valid_series? method checks whether a series of numbers is valid. For the purposes of this exercise, a valid series of numbers must contain exactly three odd numbers. Additionally, the numbers in the series must sum to 47.

Unfortunately, our last test case is not returning the expected result. Why is that?
=end

def valid_series?(nums)
  return false if nums.sum != 47 # checks that sum 47

  odd_count = nums.count { |n| n.odd? } 
  odd_count == 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false

# true or false ? if true : if false

=begin
String#upcase! is a destructive method, so why does this code print HEY you instead of HEY YOU? Modify the code so that it produces the expected output.
=end

def shout_out_to(name)
  puts 'HEY ' + name.upcase!
end

shout_out_to('you') # expected: 'HEY YOU'

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you')

=begin
We started working on a card game but got stuck. Check out why the code below raises a TypeError.

Once you get the program to run and produce a sum, you might notice that the sum is off: It's lower than it should be. Why is that?
=end

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.dup, #[2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
         :diamonds => cards.dup, #[2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
         :clubs    => cards.dup, #[2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
         :spades   => cards.dup }#[2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
        remaining_cards.map! do |card|
          score(card)
        end

        sum += remaining_cards.sum
      end

p player_cards
p sum
p deck