
# =begin
# P
# - input : an array of elements (repeated elements present)
# - output : None. We want to print the elements and their occurence in the given format.
# - Requirements :
#   - need to print the number of occurencec in the following format
#   - <name> => <count>

# Expected output: 
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# D:
# hash - which stores elements-occurrences as key-value pair

# A:
# - given: an array
# - initialize a hash result
# - iterate through the given array
#   - if hash has that element then add 1 to the count of occurences
#   - if hash does not have that element then set number of occurences to 1
# -return the hash

# =end

# def count_occurences(arr)
#   count = {}
#   arr.each do |vehicle|
#     occurences = arr.count(vehicle)
#     # we have the vehicle and occurences
#     # how do we update it to the hash?
#     count[vehicle] = occurences
#   end
#   # finally return the hash result
#   return count
# end

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# # alphabets = {a: 1, b: 2, c: 3}

# p count_occurences(vehicles)
  

#As we iterate over each unique element, we create
#a new key-value pair in occurrences, with the key
#as the element's value. To count each occurrence, we use
#Array#count to count the number of elements with the same value.
#Lastly, to print the desire output, we call #each on the newly 
#created occurrences, which lets us pass the keys and values as
#block parameters. Then inside of the block we invoke #puts 
# to print each key-value pair.

#1. loop over the vehicle's list
#2. count occurrences
#3. If vehicle exists in the hash, increment the count by 1.
#4. If vehicle does not exist in the hash, add key to the hash.
#5. Initialize value of count as 1.
#6. Output the key-value pairs.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrence_count = {}
  array.each do |item|
    if occurrence_count.key?(item)
      occurrence_count[item] += 1
    else 
      occurrence_count[item] = 1
    end
  end

  occurrence_count.each {|item, count| puts "#{item} => #{count}" }
end

count_occurrences(vehicles)

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# low_numbers = numbers.select do |key, value|
#   value < 25
# end

# p low_numbers

# **Problem**
# For a given array, count the ocurrances of each word and output the result
# Input: array
# Output: hash
# What happens if an empty array is inputted?
# Entries are case senstive

# **Examples/Test Cases**
#

# **Data structures**
# Hash

# **Algorithm**

# Create a method that takes in an array
# create a hash to store number of occurrences of each word
# Count the occurrences !!!
  # iterate through the passed array
  #  :) if the occurrence has already been created, add 1 to it
  # else initialize a new key-value pair
# print the hash

def count_occurrences(array)
  count_occurrence = {}
  array.each do |item|
    if count_occurrence.key?(item)
      count_occurrence[item] += 1
    else
      count_occurrence[item] = 1
    end
  end
  count_occurrence
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)
