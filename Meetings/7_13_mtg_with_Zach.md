working for interview with 189.  he misses the early stuff because it was fun.  Writing code.


=begin
Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

ZachP: 
Given a hash of fruits and vegetables, determine whether each element is a fruit or a vegetable, and then get either the colors, or the size, and perform the appropriate operation on that value. For fruits, uppcase the colors, for vegetables, capitalize the size. Add these new values to a new array and return it.
Input: hash, hash where the values are hashes
Output: Array

requirements:
- return value is a new collection
- the kind of element (fruit or veggie) is determined by the value of type in 
    the value hash.
- if fruit, store the entire array, and upcase each string in it. 
- if veggie, store the size string after capitalizing it
- add the stored values to an array, and return it. 


P:
input : Hash
output : Array

We are given a hash of hashes which contain three key-value pairs.  These are categorizing some elements of fruits and vegetables.  Please change the colors of the fruits to be capitalized.  Adjust the sizes of the vegetables to be uppercase.These do not need to mutate original collection.  The new values created will be added to a new object. Return this new object containing this data.

Requirements:
Explicit: array must contain:
            - capitalized colors of the fruits
            - uppercase sizes of the vegetables

Implicit: how do we know when something is fruit or a vegetable?
  - the problem description doesn't get specific with this
  - determine whether it is a fruit or veggie, based on the value of the :type key.

D: Array
come back to data structure until algorithm is updated

A:
iterate over the Hash
In the first collection check its type.
  IF fruit, then access the colors and capitalize the first letter
    - add this to the new collection
  IF vegetable, then access the size and capitalize every letter.
    - add this to the new collection
Do this for every element in the hash.
Return the new collection.

initialize new collection
iterate over the hash and assign each element to a parameter of healthy_food
  - checking each healthy_food for type
    IF fruit, 
      retrieve the array with the colors key
      iterate over the array and capitalize the first letter of each element
        - 
      add this array to new collection
    IF vegetable,
      retrieve the string with the size key
      upcase the string
      add this string to new collection
Return new collection.
=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

adjusted_array = []
hsh.each do |healthy_food, details|
  if details[:type] == 'fruit'
    color_caps = details[:colors].map do |color|
      color.capitalize
    end
    adjusted_array << color_caps
  else
    adjusted_array << details[:size].upcase
  end
end

p adjusted_array



#he return value should look like this:

[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]


=begin
Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

ZachP: 
Given a hash of fruits and vegetables, determine whether each element is a fruit or a vegetable, and then get either the colors, or the size, and perform the appropriate operation on that value. For fruits, uppcase the colors, for vegetables, capitalize the size. Add these new values to a new array and return it.
Input: hash, hash where the values are hashes
Output: Array

requirements:
- return value is a new collection
- the kind of element (fruit or veggie) is determined by the value of type in 
    the value hash.
- if fruit, store the entire array, and upcase each string in it. 
- if veggie, store the size string after capitalizing it
- add the stored values to an array, and return it. 


P:
input : Hash
output : Array

We are given a hash of hashes which contain three key-value pairs.  These are categorizing some elements of fruits and vegetables.  Please change the colors of the fruits to be capitalized.  Adjust the sizes of the vegetables to be uppercase.These do not need to mutate original collection.  The new values created will be added to a new object. Return this new object containing this data.

Requirements:
Explicit: array must contain:
            - capitalized colors of the fruits
            - uppercase sizes of the vegetables

Implicit: how do we know when something is fruit or a vegetable?
  - the problem description doesn't get specific with this
  - determine whether it is a fruit or veggie, based on the value of the :type key.

D: Array
come back to data structure until algorithm is updated

A:
iterate over the Hash
In the first collection check its type.
  IF fruit, then access the colors and capitalize the first letter
    - add this to the new collection
  IF vegetable, then access the size and capitalize every letter.
    - add this to the new collection
Do this for every element in the hash.
Return the new collection.

initialize new collection
iterate over the hash and assign each element to a parameter of healthy_food
  - checking each healthy_food for type
    IF fruit, 
      retrieve the array with the colors key
      iterate over the array and capitalize the first letter of each element
        - 
      add this array to new collection
    IF vegetable,
      retrieve the string with the size key
      upcase the string
      add this string to new collection
Return new collection.
=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# adjusted_array = []
# hsh.each do |healthy_food, details|
#   if details[:type] == 'fruit'
#     color_caps = details[:colors].map do |color|
#       color.capitalize
#     end
#     adjusted_array << color_caps
#   else
#     adjusted_array << details[:size].upcase
#   end
# end

# p adjusted_array

def transforming_color_size(hash)
  adjusted_array = []
  hash.each do |healthy_food, details|
    if details[:type] == 'fruit'
      color_caps = details[:colors].map do |color|
        color.capitalize
      end
      adjusted_array << color_caps
    else
      adjusted_array << details[:size].upcase
    end
  end
  adjusted_array
end

p transforming_color_size(hsh)

#he return value should look like this:

# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
def transforming_color_size(hash)
  hash.map do |healthy_food, details|
    if details[:type] == 'fruit'
      details[:colors].map do |color|
        color.capitalize
      end
    else
      details[:size].upcase
    end
  end
end

p transforming_color_size(hsh) 