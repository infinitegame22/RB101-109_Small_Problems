=begin
Create a method that takes 2 arguments, an array and a hash.
The array will contain 2 or more elements that, when combined
with adjoining spaces, will produce a person's name. The hash
will contain two keys, `:title` and `:occupation`, and the 
appropriate values. Return a greeting that uses the person's
full name, and mentions the person's title and occupation.

input: array, hash
output: string interpolated

['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }
=> Hello, John Q Doe! Nice to have a Master Plumber around.

D: array, hash

A: 

=end
def greetings(name, status)
  "Hello, #{name.join(' ')}! Nice to have a #{status[:title]} #{status[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
# Adam's

def greetings(arr, hsh)
  name = arr.join(' ')
  professional = hsh.values.join(' ')
  "=> Hello, #{name}! Nice to have a #{profession} around."
end

=begin
We have two variables here, an array and a hash. We can use
`Array#join` on the array, and supply it with a `' '` to change
the array into a full name with appropriate spacing. For the
hash, we simply access the items by their keys.

Finally we use string interpolation to combine everything into
a single string and allow the method to return it automati-
cally.
=end