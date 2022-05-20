array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array1
puts array2  # they contain the same String objects.
# An array is a block of memory, using the same address at both 
# Pass by refernce is like a house giving someone the address of a house
# pass by reference 5 Lincoln Road, address would help me look up the house
# both arrays have the same address, so any changes made to the house in 
# address, if I affect one object in an array, it will affect both.