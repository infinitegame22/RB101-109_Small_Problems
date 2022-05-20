=begin
input - supplied number ingeter
output - integer (sum of integers that are multiples of 3 or 5)
iterate over a range of numbers
check if number is a multiple of 3 or 5

=end

def multisum(number)
  sum = 0
  (1..number).each do |n|
    if n % 3 == 0 || n % 5 == 0
      sum += n
    end
  end
  sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168