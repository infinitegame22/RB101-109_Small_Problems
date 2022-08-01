# =begin
# input : two arrays - same length, not empty
# output: one array, elements in alternation

# whatever the number of elements it will be 2n in returned array
# know the size of the output array
# also know the index
# 1 loop
# - both the same length
# - will cover both

# take 1 element from 1st array, put it in the new onej
# technically grab 0 index from both and then put it into the
# array

# =end

# def interleave(arr1, arr2)
#   combined_arry = []
#   arr1.each_with_index do |_, idx|
#     combined_arry << arr1[idx]
#     combined_arry << arr2[idx]
#   end
#   combined_arry
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

def letter_case_count(string)
  count_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    case char
    when /([A-Z])/
      count_hash[:uppercase] += 1
    when /([a-z])/
      count_hash[:lowercase] += 1
    else
      count_hash[:neither] += 1
    end
  end
  count_hash
end
 # enum is a value for checking things
 # making a chess game, two colors of pieces ,didn't want to
 # use strings, define an enum piece color, uppercase black,
 # uppercase white, colorpieces.BLACK - constant
 # useful with switch statements, case can be one value in enum
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }