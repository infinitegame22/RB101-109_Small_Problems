=begin
Write a method which takes a grocery list (array) of fruits
with quantities and converts it into an array of the correct
number of each fruit.

input: nested array of grocery items
output: 1 array of the multiple items - flattened

E: [["apples", 3], ["orange", 1], ["bananas", 2]] ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

  => ["apples", 3] ["orange", 1] ["bananas, 2"]

D: array iteration

A: initialize empty array
iterate over the argument array
use element 2 in the sub array as the count for the element 1
push the elements printed into the new array
return the new array

integer element is the count of how many string elements
need to be produced sub_array[1].times do puts sub_array[0]

=end

def buy_fruit(grocery_list)
  expanded_list = []
  grocery_list.each do |item_count|
    item_count[1].times do
      expanded_list << item_count[0]
    end
  end
  expanded_list
end

# LS solution
def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times {expanded_list << fruit}
  end
  
  expanded_list
end

def buy_first(list)
  list.map { |fruit, quanity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]