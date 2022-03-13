# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# repeat('Hello', 3)

# Hello
# Hello
# Hello

# P 
# E - '', 3 
# D - None. -- Nouns. Boxes. name = Amy
# A - Pass the integer, print the string integer times.  
# C 

# def repeat(string, num)
#     num.times do 
#        puts string 
#     end 
# end 

# repeat('Hello', 3)
# repeat('', 1)
# repeat('Hello', 0)

def repeat(string, num)
  puts (string+"\n") * num
end

repeat('Hello', 3)
repeat('', 1)
repeat('Hello', 0)