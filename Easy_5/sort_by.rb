# https://www.rubyguides.com/2017/07/ruby-sort/

def sort_by_capital_word(text)
  text
    .split
    .sort_by { |w| w[0].match?(/[A-Z]/) ? 0 : 1 }
    .join(" ")
end

p sort_by_capital_word("calendar Cat tap Lamp")

=begin
It is also possible to do custom sorting using the regular `sort`
method with a block.

Here's an example:
=end

strings = %w(foo test blog a)

strings.sort { |a, b| a.length <=> b.length }
# ['a', 'foo', 'test', 'blog']
=begin
Note: this `<=>` symbold is called "the spaceship operator"
& it's a method I can implement in my class.  It should 
return 1 (greater than), 0 (equal) or -1 (less than).
=end

=begin
## Customized Sorting with sort_by

With the `sort_by` method I can do more advanced and interesting
  sorting.

I'll be able to:

- Sort by string length
- Sort by string contents
- Sort by whether a number is even or odd

I can do this with the `sort_by` method and a Ruby block.

  For example,
=end
strings = %w(foo test blog a)

strings.sort_by(&:length) 

# ["a", "foo", "test", "blog"]
=begin
https://stackoverflow.com/questions/28444892/what-does-name-mean-in-ruby
Unary ampersand is address of a function/block/lambda

In this case, it means that the `.sort_by` function will use
each `a`'s element's function named `name` for comparison

Mostly it's used for something else, like this:
=end

[1, 2, 3].map{|x| x.to_s} #["1", "2", "3"]

# That could be shortened as:

[1, 2, 3].map(&:to_s)

# So, in my case, `a.sort_by(&:name)` is a shorthand to:
a.sort_by{ |x| x.name }





