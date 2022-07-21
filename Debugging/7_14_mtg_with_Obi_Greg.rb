
# What will the below output and why?

a = 'hi'
english_greetings = ['hello', a, 'good morning']

greetings = {
french: ['bonjour', 'salut', 'allo'],
english: english_greetings,
italian: ['buongiorno', 'buonasera', 'ciao']
}

greetings[:english][1] = 'hey'

greetings.each do |language, greeting_list|

  greeting_list.each { |greeting| greeting.upcase! }
end

puts a # => 'hi'
puts english_greetings[1] # = > 'HEY'
puts greetings[:english][1] # => "HEY"
puts greetings # => the hash and all value elements upcase!


# What will the below output and why?
require 'pry'

a = 'hi'
b = a 
a = 'hello'

english_greetings = ['hello', a, 'good morning']


greetings = {
french: ['bonjour', 'salut', 'allo'],
english: english_greetings,
italian: ['buongiorno', 'buonasera', 'ciao']
}

greetings[:english][1] = 'hey'

greetings.each do |language, greeting_list|
   greeting_list.each { |greeting| greeting = 'hello' }
end

p ans
puts a # => 'hello'
puts english_greetings[1] # = > 'hey' return value: nil
puts greetings[:english][1] # => "hey" return value: nil
puts greetings # => the hash and all value elements lowercase return value: nil


arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end