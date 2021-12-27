a = %w(a b c d e)
#puts a.fetch(7) #error index 7 outside of array bounds
puts a.fetch(7, 'beats me') #beats me
puts a.fetch(7) { |index| index**2 } #49

#fetch(index) → element
#fetch(index, default_value) → element
#fetch(index) {|index| block } → element

#This shows that #fetch can be called with an index argument,
#an index and a default argument, an index argument and a block
#Note 