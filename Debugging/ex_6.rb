=begin
We wrote a method for moving a given number of elements from
one array to another. We decide to test it on our todo list,
but invoking `move` on line 11 results in a `SystemStackError`.
What does this error mean and why does it happen?
=end

def move(n, from_array, to_array)
  return if n == 0
  # return if from_array.size == 0 && n>= 1 || n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

#Alternate solution 
def move(n, from_array, to_array)
  # n.times{to_array << from_array.shift}  <-- non-recursive method
# Example

def move(n, from_array, to_array)
  case n
  when 0
    return
  when (1..)
    to_array << from_array.shift
    move(n - 1, from_array, to_array)
  when (..-1)
    from_array.unshift(to_array.pop)
    move(n + 1, from_array, to_array)
  end
end

#Alternate solution
def move(n, from_array, to_array)
  to_array << from_array.shift
  move(n - 1, from_array, to_array) is n > 1
end


todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

=begin
We want to stop as soon as we have moved `n` elements from
one array to the other, i.e. when `n == 0`. The code we have
added on line 2 of the solution tells Ruby to `return` from
the method when that condition is met.

What happens if the length of the `from_array` is smaller 
than `n`?
=end