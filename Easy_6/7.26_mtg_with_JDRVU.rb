def substrings(str)
  last_index = str.size - 1
  0.upto(last_index) do |starting_index|
    starting_index.upto(last_index) do |ending_index|
      result << str[starting_index..ending_index]
    end
  end
  result
end

p substrings("What'sup")

def substrings(string)
  (0..string.size - 1).each_with_object([]) do |start|
     
=begin
Try and get more in the habit. Watch the video.  Talking about
how he likes a 3 time iteration, not grasping until 2nd or 3rd
time getting through it. 

Iterating over material, grabbing new elements, small problems

Don't worry about acing quizzes the first time through

Have you ever looked at someone else's code for something longer.
The first pass through, hardly make any sense of it.  Kind of
his method is similar how to break down other people's legacy
code.  It's hard to read and more we take notes, a gathering
of a bigger picture how the programming fit together.  



=end

def all_ranges_subarrays(a)
  a.size.times.with_object([]) do |idx, sub_arrays|
    range = 1
    until range > (a.size - idx)
      sub_arrays << a[idx, range]
      range += 1
    end
  end.uniq
end

=begin
`a` is the input string or array. invoke size on a to get 
the number of elements in it. INvoke the times method on
 that number.  Have an index is the times starting at 0.

 Set range to 1, grabbing lengths of strings.  Don't need 
 to start as an index.  Tell how many elements to grab.
 While range > size of array or string, saying range is less 
 that that size.
 Keeps range from going beyond the size we need.  We are 
 putshing the string/array from index for range length into
 the subarrays. First iteration, index = 0, range = 1
 add 1 to range and repeats until range is 

 Once we pass that it will go back to the outer block and
 index will be upped by 1.  Index 1 for one length and pushes
 all of that into the subarray.  If it's an array of numbers
 and have  'Bora BOra', second half of this is the same 
 things, two substrings, the uniq element at the end grabs
 the return value of the block and will take any additional
 elemnents with uniq.
=end

def two_element_subarrays(a)
  a.each_with_index.with_object([]) do |(element, idx), sub_arrays|
    second_element = idx + 1 # so it's never the same index as the other
    until second_element == a.size # want this break when second_element equals
      sub_arrays << [element, a[second_element]]
      second_element += 1
    end
  end.uniq
end

=begin
nested iteration is like an abacus.  The beads work in certain
increments, pushed all to one side.  Iteration is like this at each
level. Push over one elemnt, push, pull and move. Resetting at
1 , same thing with a third range, count through 1, then 10, then
once this got to 10, push it over again then start up.

The two top pieces are set.  Third nest, middle nested iteration, 
break it down level by level 
=end


end

a = "borraborra"  # 10
b = [1, 2, 3, 4, 5, 6]

def all_ranges_subarrays(a)
  a.size.times.with_object([]) do |idx, sub_arrays|
    range = 1
    until range > (a.size - idx)
      sub_arrays << a[idx, range]
      range += 1
    end
  end
end


def three_element_subarrays(a)
  a.each_with_index.with_object([]) do |(element, idx), sub_arrays|
    second_element = idx + 1
    until second_element == a.size
      third_element = second_element + 1
      until third_element == a.size
        sub_arrays << [element, a[second_element], a[third_element]]
        third_element += 1
        p "third element: #{third_element}"
      end
      second_element += 1
      p "second element: #{second_element}"
    end
  end.uniq
end

p three_element_subarrays(b)



# def three_element_subarrays(a)


=begin
How do you play the game?
  hit or stay, bust until you get 21
  dealer's turn
  removes a card from deck, duplicate 
  52 cards in a deck 4 suits, 13 cards per suit

=end
cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = {
  hearts: cards.dup
  diamonds: cards.dup,
  spades: cards.dup,
  clubs: cards.dup
}
DECK =
def welcome_player; end 

def deal_cards!(deck, player_cards, dealer_cards)
  deal!(deck, player_cards)
  deal!(deck, dealer_cards)

  p player_cards
  p dealer_cards
  nil
end

def take_turn!(deck, player_cards, dealer_cards, turn_player = :player)
  hand = (turn_player == :player) ? player_cards : dealer_cards

  loop do
    show_cards(player_cards, dealer_cards)
    break if stay?(turn_player)

    hit!(deck, hand)
    break if busted?(hand)
  end
end

def play_game!(deck, player_card,dealer_card)
  deal_cards!(deck, player_cards, dealer_cards)

  take_turn!(deck, player_cards, dealer_cards.first) 
  take_turn!(deck, player_cards, dealer_cards, :dealer) 
end 

def result(player_cards, dealer_cards); end 


def main 
  welcome_player

  deck = DECK.dup 
  player_cards = {}
  dealer_cards = {} 

  play_game!(deck, player_card, dealer_card) if play? 
  
  prompt result(player_cards, dealer_cards)
end 

# 52 deck 
# 4 suits
# 13 cards 

cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = {
  hearts: cards.dup,
  diamonds: cards.dup,
  spade: cards.dup,
  clubs: cards.dup
}

shuffle!(deck)
player = []
dealer = []

def grab_card!(deck)
suit = deck.keys.sample
card = deck[suit].sample

deck[suit].delete(card)
end

player << grab_card!(deck)
dealer << grab_card!(deck)


def shuffle(deck) 
  new_deck = [] 
  until deck.empty? 
    new_deck << deck.delete(deck.sample) 
  end 
  new_deck 
end 

p shuffle([1, 2, 3]) 

p [1, 2, 3, 4, 5].shuffle!

new_deck = []

deck.keys.map do |key|
  until deck[key].empty?
    new_deck << "key: #{deck[key].pop}"
  end
  new_deck
end

p new_deck