=begin
Write a method that takes an array as an argument, and reverses
its elements in place; that is, mutate the array passed into
this method. The return value should be the same array object.

array#reverse and array#reverse! are off the table

input: array
output: reversed array

Requirements:
- only reverse the elements in the array.
- mutate the array passed into this method

=end

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

#Tony Liao's answer

def reverse!(array)
  dup_array = array.slice!(0, array.size)

  dup_array.each do |element|
    array.prepend(element)
  end
end

#brasier's solution

def reverse!(list)
  hash = {}
  unless list.empty?
    list.each_with_index do |element, index|
      hash[element] = index
    end
    new_index = 0
    original_index = list.size - 1
    loop do
      list[new_index] = hash.key(original_index)
      new_index += 1
      original_index -= 1
      break if new_index == list.size
    end
  end
  list
end

# Bethany Pietroniro's solution

def reverse!(arr)
  temp = []
  arr.length.times { |element| temp << arr.pop}
  arr.prepend(temp).flatten!
end

# Richard Vu's solution

def reverse!(arr)
  left_index = 0
  right_index = arr.size - 1

  until left_index >= right_index
    arr[left_index], arr[right_index] = arr[right_index], arr[left_index]
    left_index += 1
    right_index -= 1
  end
  arr
end

# JD's solution

def reverse!(list)
  return list if list.empty?
  counter = 0
  loop do
    element = list.pop
    list.insert(counter, element)
    counter += 1
    break if counter == list.size
  end
  list
end

def reverse!(list)
  list.size.times { |i| list.insert(i, list.pop)}



=begin
This solution is straightforward; it sets one index to point 
to the beginning of the array, another index to point to the 
end of the array, and then walks through the array exchanging
elements at each step. Since we update the array in place, we
name the method `reverse!` instead of `reverse`.

Note that the loop terminates at the middle of the list. If we
continued, we would end up rebuilding the original array.

The most interesting part of this code is the parallel 
assignment on line 6; this is a Ruby idiom for exchanging
two values without requiring an intermediate value.  Its a
handy idiom to remember.

In practice, of course, I would probably use `Array#reverse!`
instead.  

Note that this soluction here has both a side-effect (in 
mutating the array passed in to the method) and a meaningful
return value (it returns the mutated array).  Generally, this
would be seen as bad practice (I want my methods either to have
a side-effect, or a meaningful return value).
=end

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true