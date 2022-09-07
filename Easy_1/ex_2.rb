=begin
Write a method that counts the number of occurrences of each element in a given array.
input: array
output: hash with key value pairs counting the number 

requirements:
- case sensitive
- 'print'

D: array => hash

A: initialize empty hash
iterate over the array
  - store the 1st iteration of the 'car' element as a key 
  - check if element is already in hash
    - if it is then increment the count by 1
    - otherwise initialize a new pair with a count of 1
print the hash
=end

def count_occurrences(arr)
  hash_count = Hash.new(0)
  arr.each do |auto|
    if hash_count.has_key?(auto)
      hash_count[auto] += 1
    else
      hash_count[auto] = 1
    end
  end
  puts hash_count
end

# LS solution

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    element = element.downcase
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'suv', 'truck',
  'motorcycle', 'suv', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)