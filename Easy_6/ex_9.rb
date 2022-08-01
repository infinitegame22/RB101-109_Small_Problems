=begin
Write a method named `include?` that takes an array and a 
search value as arguments. This method should return `true`
if the search value is in the array, `false` if it is not. 
Don't use the `Array#include?` method in my soluiton

Input: array
output: boolean

Requirements:
- do not use the `Array#include?`
- 

D: 

A: search array for search value
iterate over the array
check each element to see if it matches the search value
  IF match return true
else
  return false
=end

# def include?(array, search_value)
#   loop do |element|
#     if element == search_value
#       return true
#     else
#       return false
#     end
#   end
# end

# LS 

def include?(array, value)
  !!array.find_index(value)
end

def include?(array, value)
  array.each {|element| return true if value == element}
  false
end

def include?(array, value)
  !!array.find_index(value)
end

def include?(array, value)
  array.each {|element| return true if value == element}
  false
end


# Lucas'
def include?(array, search_value)
  array.any?(search_value)
end

def include?(array, test)
  array.each do |element|
    return true if element == test
  end
  false
end

def include?(array, value)
  !!array.index(value)
end

def include?(array, value)
  array.any?(value)
end

# Carlos Mackenzie
def include?(array, number)
  array = array << number
  return true if array.count(number) == 2
  false
end

=begin
The first method uses `Array#find_index` to scan the array for
the first element that has the specified value.  `find_index`
returns the index number of the found element, which will always
have a truthy value, or `nil` if no such element is present.  We
then use !! to force the return value to `true` or `false` in
accordance iwth the implied promise of the `?` in `include?`.
=end

p include?([1,2,3,4,5], 3) #== true
p include?([1,2,3,4,5], 6)#== false
p include?([], 3) #== false
p include?([nil], nil) #== true
p include?([], nil) #== false