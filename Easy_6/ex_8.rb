=begin
Given an unordered array and the information that exactly one
value in the array occurs twice (every other value occurs exactly once),
how would I determine which value occurs twice? Write a method
that will find and return the duplicate value that is known to 
be in the array.

Input: array
output: integer

Requirements:
- 

D: array

A : - iterate over the array
- count each integer
- add to hash

=end

# Launch School solution

def find_dup(array)
  array.find { |element| array.count(element) == 2}
end

def find_dup(array)
  array.find { |element| array.count(element) == 2}
end

def find_dup(array)
  array.find {|element| array.count(element) == 2}

find_dup([1, 5, 3, 1]) == 1
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

=begin
`Enumerable#find` returns the first element for which the block
returns a truthy value. 

With a block given, calls the block with successive elements
of the collection; returns the first element for which the block
returns a truthy value:
=end
0..9.find {|element| element > 2} #=> 3

# Tony Liao's 
def find_dup(array)
  array.tally.key(2)
end

# wbrasier's
def find_dup(array)
  array.each do |first_element|
    counter = 0
    array.each do |matching_element|
      counter += 1 if first_element == matching_element
      return matching_element if counter >= 2
    end
  end
end

# Greg Chase's
def find_dup(int_array)
  int_array.sort!
  counter = 0
  loop do
    break if int_array[counter] == int_array[counter + 1]

    counter += 1
  end
  int_array[counter]
end

# Carlos Mackenzie
def find_dup(array)
  array.select { |num| array.count(num) >= 2}.pop
end