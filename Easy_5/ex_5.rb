=begin
check non - alphanumeric characters, then delete the duplicates
replace what's left with a space
=end

def letter?(character)
  character.match?(/[[:alpha:]]/)
end
#p letter?("a")
#p letter?('-')

def cleanup(char_string)
  result = ''
  char_string.each_char do |char|
    if letter?(char)
      result << char
    else
      result[-1] == ' ' ? next : result << ' '
    end
  end
  result
end

def letter?(character)
  character.match?(/[[:alpha]]/)
end

def clean_up(character_string)
  result = ''
  char_string.each_char do |char|
    if letter?(char)
      result << char
    else
      result[-1] == ' ' ? next : result << ' '
    end
  end
  result
end


p cleanup("---what's my +*& line?") == ' what s my line '