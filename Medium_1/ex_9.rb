def fibonacci(int)
  fib_arr = [1, 1]

  until fib_arr.size == int
    fib_arr << fib_arr[-2] + fib_arr[-1]
  end

  fib_arr.last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501