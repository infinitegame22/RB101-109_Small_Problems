# =begin
# Our countdown to launch isn't behaving as expected. Why? Change 
# the code so that our program successfully counts down from 10
# to 1.
# =end

# def decrease(counter)
#   counter -= 1 # counter - 1 = counter
# end

# counter = 10

# 10.times do
#   puts counter
#   counter = decrease(counter) # counter needs to be stored in
#   # the variable so as to display the correct integer
# end

# puts 'LAUNCH!'

# =begin
# Relevant to notice here is that the `counter` variable initialized
# on line 5 and the `counter` parameter of the `decrease` method are
# two independent variables. Most importantly, the latter lives only
# within the scope of the method. On line 2 of our original code
# snippet we reassign the method parameter to the result of its value
# minus 1. (Recall that `counter -= 1`) is shorthand for `counter = 
# counter - 1`.) This changes the value of the `counter` variable 
# local to the method, but not the variable `counter` referenced
# on lines 5, 8 and 9. We also don't use the return value of the
# method anywhere, so our `counter` variable outside of the method
# continues to reference the integer `10.`

# To address this, we can reassign the variable `counter` on line 9
# to the return value of `decrease(counter)`  each time we iterate
# through the block. For clarity, we also remove the reassignment in
# the `decrease` method, as it does not serve any purpose.

# We specify `10` two times, which looks a bit redundant. It should 
# be possible to specify it only once. Can I refactor the code?

# =end

# 10.downto(1) do |counter|
#   puts counter
# end

# puts 'LAUNCH!'

# def countdown_to(num)
#   until num.zero?
#     puts num
#     num -= 1
#   end
#   puts 'LAUNCH!'
# end

# counter = 10
# countdown_to(counter)

def decrease(counter) # pass by reference, chunk of memory
  counter - 1 # reassignment, block scope 2 - called a function in block scope 1
    # the way functions work, go deeper and deeper.  Once the function that called
    #ends, go back to the other function.
  #return counter - 1
end

counter = 10

10.times do # called from global scope
  puts counter # indentation signifies block scope 1
  decrease(counter) # nested 1 level inside the global scope
end

puts 'LAUNCH!' # pass by value or by reference?
# mutating the counter inside the function, but we're returning 
# the updated value. We are doing a -1 on it.  We are not giving
# back that same value with the -1.  The way that scope works 
# things are nested. Every program has the main method that 
#starts the program.  A child of the main method.  A parent 
# can have two nested childs. A caller.
# 
# https://jstutorial.medium.com/the-visual-guide-to-javascript-variable-definitions-scope-abfb86edad
=begin
global scope
block scope 1 - 1 level nested inside the function

breadth vs depth
- code can be done in different ways, do the same thing
  - breadth - go as wide as you can until you can't anymore
  - depth - go as deep as you can until you can't anymore
    - what we discovered as functions.  Whoever called you,
    pass it back.

Not about functions, but searching algorithm.  Going deep
until can't anymore in search.

  text indentations - write a program tha displayed people with
  the correct indentation with all the people below indented
  correctly.
=end

# Student answer
def egyptian(rational)
  denominator = 1
  denom_arr = []
  while rational > 0
    n = Rational(1, denominator)
    if rational - n >= 0
      denom_arr << denominator
      rational = rational - n
    end
    denominator += 1
  end
  denom_arr
end

def unegyptian(arr)
  arr.map { |n| Rational(1, n) }.sum
end
 
# marcos' answer
# marcos'
def egyptian(rational)
  result = []
  counter = 1
  until result.sum == rational
    sample = Rational(1, counter)
    result << sample if sample + result.sum <= rational
    counter += 1
  end
  result.map { |num| num.denominator }
end

def unegyptian(array)
  array.map { |num| Rational(1, num) }.sum
end