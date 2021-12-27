def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

#https://docs.ruby-lang.org/en/2.2.0/syntax/calling_methods_rdoc.html
#also found at https://ruby-doc.org/core-3.0.3/doc/syntax/calling_methods_rdoc.html
#First 4 is assigned to a, then 6 is assigned to d. 
#This leaves only the arguments with default values. 
#Since 5 has not been assigned to a value yet, 
#it is given to b and c uses its default value of 3.
#[4, 5, 3, 6]