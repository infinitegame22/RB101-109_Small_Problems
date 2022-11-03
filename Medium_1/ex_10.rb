=begin
on 3rd iteration
last2 = [1, 2]
on 4th iteration
last2 = [2, 3]
on 5th iteration 
last 2 = [3, 5]
on 6th iteration
last2 = [5, 8]
on 7th iteration
last2 = [8, 3]

=end

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

#OR 
def fibonacci_last(nth)
  fibonacci(nth).to_s[-1].word_to_i
end