=begin
Modify the method from the previous exercise so it ignore non-
alphabetic characters when determining whether it should 
uppercase or lowercase each letter.  The non-alphabetic char's
should still be included in the return value; they just don't
count when toggling the desired case.

input:string
output: string

E: 'I Love Launch School!' == 'I lOvE lAuNcH sChOoL!'
the characters don't count for toggling the desired case
  - 'I' then ' ' then lowercase letter

D: iteration

A: initialize new string
initialize new variable and assign it to `true`
break string into characters and iterate over the array result
IF character matches the letters a-z
  - IF true
    - add the upcased letter to the new string
  - ELSE
    - add the lowercased letter to the new string
reassign true variable to the opposite of what it is.
ELSE (characters non-alphabetical)
  add the character to the new string
return new string
=end
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

# Lucas'
def staggered_case(string, ignore_non_alphabetic=true)
  index_index_counter = 0

  string.chars.each_with_object("") do |char, new_string|
    index_counter.even? ? new_string << char.upcase : new_string << char.downcase

    if ignore_non_alphabetic
      index_counter += 1 unless char.match(/[\W_\d]/)
    else
      index_counter += 1
    end
  end
end
=begin
This solution is very similar to the previouse solution;
the only difference is that we need to avoid changing 
`need_upper` when processing non-alphabetic characters.
We use a simple regular expression with the `/i` flag
(ignore case) to detect letters.

  A flag is an optional parameter to a regex that modifies
  its behavior of searching. A flag changes the default 
  searching behavior of a regular expression. It makses a
  regex search in a different way. A flage is denoted using
  a single lowercase alphabetic character.

  https://learnbyexample.github.io/Ruby_Regexp/modifiers.html
=end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'