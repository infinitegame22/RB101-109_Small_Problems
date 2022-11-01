=begin
Let's build another program using madlibs. We made a program like this in the easy exercises. This time, the requirements are a bit different.

Make a madlibs program that reads in some text from a text file that you have created, and then plugs in a selection of randomized nouns, verbs, adjectives, and adverbs into that text and prints it. You can build your lists of nouns, verbs, adjectives, and adverbs directly into your program, but the text data should come from a file or other external source. Your program should read this text, and for each line, it should place random words of the appropriate types into the text, and print the result.


- Hash --> can hold the keys as the word type
values: array of that type of word
- read the text file array
- iterate over the text_file_array and for every line split on the space and look at every word individually
  - find the %{} format --> %{noun}
  - and replace the generic words (keys) with a random different type from the array (value)

- text data interpolated using the keys and a random choice from the value arrary
- return the text data adjusted

=end
text = File.readlines('text.txt')

hash = { 
  adjective: ['cute', 'gnarly', 'grisly', 'yellow'],
  noun:      ['person', 'panda', 'cat', 'dog'],
  verb:      ['do', 'walk', 'run', 'swim'],
  adverb:    ['well', 'carefully', 'stealthily', 'defiantly']
 }

mapped_text = text.map do |string|
  string.split(/[\s,]/).map do |word| # %{adjective}
    case word
    when "%{adjective}" then word.gsub!('%{adjective}', hash[:adjective].sample)
    when "%{noun}"      then word.gsub!('%{noun}', hash[:noun].sample)
    when "%{verb}"      then word.gsub!('%{verb}', hash[:verb].sample)
    when "%{adverb}"    then word.gsub!('%{adverb}', hash[:adverb].sample)
    when ""             then next
    else
      p word
      word
    end
  end.join(' ')
end
p mapped_text.join("\n")
File.write('mapped_text.txt', mapped_text.join("\n"))