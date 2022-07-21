=begin
A friend of mine wrote a number guessing game. The first version
he shows you picks a random number between 1 and a provided max-
imum number and offers me a given number of attempts to guess it.

However, when I try it, I notice that it's not working as expected.
Run the code and observe its behavior. Can I figure out what is
wrong?
=end

def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  puts "winning_number = #{winning_number}"

  loop do
    attempts += 1
    break if attempts > max_attempts

    puts "attempt #{attempts} of #{max_attempts}"


    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number
      
      # Try again:
      guess_number(max_number, max_attempts)
    end
  end
end

guess_number(10, 3)

=begin
It's up to you how to inspect the state of the program. For
simplicity, we can introduce two `puts` statements that log
the values of the most relevant variables at two crucial points:
after entering the method `guess_number`, and after entering
the loop within that method.

In order to stop looping when the user has guessed correctly,
we add a `break` statement to line 23.

The unexpected behavior exhibited when a user guesses wrongly
is due to the invocation of `guess_number` on line 28 of the 
original code. As seen in the example debugging output provided,
doing so determines a new `winning_number` and resets `attempts`
to `0` each time we re-enter the method.

It's not necessary to invoke `guess_number` from within the 
loop.  We can realy on our loop to continue prompting the user
until they have either guessed correctly or run out of guesses.
Therefore we can simply remove the invocation of `guess_number`
from line 28.
=end
