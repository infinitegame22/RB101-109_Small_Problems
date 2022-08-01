# def swapcase(string)
#   string.chars.map do |char| 
#     /[A-Z]/.match(char) ? char.downcase : char.upcase
#   end.join
# end

# p swapcase('CamelCase')== 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

=begin
input: 2 arrays
output: 1 array
=end

# def multiply_list(arr1, arr2)
#   combined_arry = []
#   arr2.each_with_index do |_, idx|
#     combined_arry << arr1[idx] * arr2[idx]
#   end
#   combined_arry
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

=begin
input: 2 arrays
output: new array

Requirements: 
- result should be sorted by increasing value
- new array contains product of every pair of numbers

loop over first array
within that loop, loop over the next array and multiply current value by other values
=end
# def multiply_all_pairs(arr1, arr2)
#   combined_arry = []
#   arr1.each do |num1| # outerloop 
#     arr2.each do |num2| # inner loop
#       combined_arry << num1 * num2
#     end
#   end
#   combined_arry.sort
# end

# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]

=begin

=end
# def penultimate(string)
#   array_of_words = string.split
#   array_of_words[-2]
# end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'