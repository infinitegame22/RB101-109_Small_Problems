understanding return value
memorized syntax
methods

building blocks
from an outside perspective, changing and growing
 - passing the 109 assessment is a matter of time

Flowcharting - 
  - not worried about syntax
  - not worried about implementation
  - if it didn't work, redraw it next to it
  - understand the program logic better
  - comes out with coding
  - very enjoyable, seeing myself make progress
  - start over

Presence
Tried to help people at the level they're at.
Not prideful.


Documentation:
- Writing down questions
- Writing out algorithm

Modeling Good Problem Solving - Approaching with _Curiosity_:
"Can you initialize an array with a range?"
- Tested in IRB.
  - Figured out that the range needed parentheses, so that you could invoke `to_a` on the range.
"Case statement or conditional branching?"
"How do I replace an element?"


Observations:
- "This is returning the original array. Something is broken."

I liked how you checked `map!`.


Debugging:
- "Doesn't like my case statement. Oh, it's supposed to be using `when`."


Improved fluency with syntax and reading error messages.

```Ruby
def repeated_substring_pattern(string)
  substrings = []
  1.upto(string.size / 2) do |num|
    if (string.size % num == 0)
      substrings << string[0, num]
    end
  end

  substrings.each do |substring|
    multiplier = string.size / substring.size
    return true if substring * multiplier == string
  end

  false

end
