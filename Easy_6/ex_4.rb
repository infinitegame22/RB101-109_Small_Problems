#Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

 # divide the length by half

def swap(array, index1, index2)
  array[index1], array[index2] = array[index2], array[index1]
end


def reverse!(array)
  index1 = 0
  index2 = -1
  while index1 < array.length/2
    swap(array, index1, index2)
    index1 += 1
    index2 -= 1
  end

  array
end




# list = [1,2,3,4]
# result = reverse!(list)
# p result #== [4, 3, 2, 1] # true
# p list #== [4, 3, 2, 1] # true
# list.object_id # == result.object_id # true

list = %w(a b e d c)
p reverse!(list) # == ["c", "d", "e", "b", "a"] # true
p list # == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) # == ["abc"] # true
p list # == ["abc"] # true

list = []
p reverse!(list) # == [] # true
p list #== [] # true