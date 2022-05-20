=begin
Given a sentence made up of several words, write a method to do the following.


  Iterate through the words one by one.
    - save the first word as the starting value.
    - starting with the next word iterate through all the remaining words in the sentence
    - for each iteration, compare the saved value with the current word.
    - if the word is longer or the same length as the saved value:
      - reassign the saved value as the current word
    - move on to the next word
  
  After iterating through the sentence, return the saved value.
=end


  # def longest_word(sentence)
  #   words = sentence.split
  #   saved_word = words[0]
  
  #   words.each do |word|
  #     if word.length > saved_word.length
  #       saved_word = word
  #     end
  #   end
  
  #   saved_word
  # end
  # return --> back..

  # def longest_word(sentence)
  #   words = sentence.split
  #   saved_word = words.shift
  
  #   words.each do |word|
  #     if saved_word.length < word.length
  #       saved_word = word
  #     end
  #   end
  
  #   saved_word
  # end

  # puts longest_word("I love you to the moon and beyond..")
  # #return --> beyond..
  def longest_word(sentence)
    words = sentence.split
    saved_word = words.shift
  
    words.each do |word|
      if word.length >= saved_word.length
        saved_word = word
      end
    end
  
    saved_word
  end

  puts longest_word("You could be my hero baby.")

  