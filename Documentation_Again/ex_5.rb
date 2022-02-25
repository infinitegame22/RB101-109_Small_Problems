a = %w(a b c d e)
# With the single Integer argument index, returns the element at offset index:
puts a.fetch(7) # outside of array bounds Index Error

#With the single Integer argument index, returns the element at offset index:
puts a.fetch(7, 'beats me') #beats me

#With argument index and a block, returns the element at offset index if index is in range (and the block is not called); otherwise calls the block with index and returns its return value:
puts a.fetch(7) { |index| index **2 } #49