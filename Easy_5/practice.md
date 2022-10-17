What does the following code return? What does it output? Why? What concept does it demonstrate?

```Ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
  puts n
end
p new_array
```
On line 6 the `puts` method is invoked and passed the argument block local variable `n`. The output of the block is:
1
2
3
4
5
6
7
8
9
10

On line 8 the `p` method is invoked on the array object referenced by `new_array`. This outputs `[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]` and returns `[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]`. 

On line 2 the local variable `arr` is initialized to the array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.  

On line 4 the local variable `new_array` is initialized to the return value of the `map` method invoked on the array object referenced by `arr` and passed the `do..end` block on lines 4-7 with one block parameter `n`. 

The return value is created based on the last line of code evaluated inside the block on lines 4-7.  The last line of code evaluated is the `puts` method invocation on line 6.  The return value of `puts` is `nil`.  As the `map` method iterates over the array, each element is passed into the block and returns `nil`.  This `nil` object now replaces each element in the new array object `new_array`.

This demonstrates iteration over an array collection of elements and how the method evaluates the return value of the block to create the new array object returned by the method call.