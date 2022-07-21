def shout_out_to(name)
  name = name.chars.map! {|c| c.upcase!}.join
  #the input name is a string
  # .chars => array
  # map over the array
  # map returns the reference to itself, the object that called map
  # whatever calls map, it returns a reference to that object
  # join is called on the character array 

  puts 'HEY ' + name
end

shout_out_to('you')