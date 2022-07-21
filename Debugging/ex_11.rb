=begin
Josh wants to print an array of numeric strings in reverse
numerical order. However, the output is wrong. Without re-
moving any code, help Josh get the expected output.
=end
arr = ["9", "8", "7", "10", "11"]
p arr.sort do |x, y|
    y.to_i <=> x.to_i
    puts x
    puts y
  end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

p(
  arr.sort do |x, y|
    y.to_i <=> x.to_i
  end
)

p arr.sort { |x, y| y.to_i <=> x.to_i }

=begin
The main reason why the output was unexpected is because when
I use `do...end` block, `p`, and `arr.sort` bind more tightly
due to Ruby's precedence rules, so I am passing the block to
the return value of `p arr.sort`. It's as though I wrote:
=end
(p arr.sort) do |x, y|
  y.to_i <=> x.to_i
end

=begin
In Josh's case, the block is ignored since the return value 
of `p arr.sort` is not a method call.

One way to get around this precedence issue is to use parenthses
as in Solution 1. I can also use braces instead of `do...end` as
in Solution 2.

The Ruby documentation does have information on precedence, but
this particular behavior isn't covered very well. Our main reason
for showing it is that this issue comes up time and again with
  students.
=end

arr = ["9", "8", "7", "10", "11"]
(p arr.sort) do |x, y|
  y.to_i <=> x.to_i
end

