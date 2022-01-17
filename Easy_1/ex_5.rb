def reverse_sentence(string)
  #1. I need to separate the words by spaces and store it in an array
  #2. Loop from back to front of the array
  #3. The last word will be the first word
  #4. As it loops, append the next word
  #5. Done looping, now return the new string
  array = string.split()
  new_array = array.reverse
  empty_string = ""
  new_array.each do |word|
    empty_string << word + ' ' 
  end

  return empty_string.rstrip
end





puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
