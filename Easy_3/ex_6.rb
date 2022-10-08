=begin
Write a function named `xor` that takes two arguments, and
returns `true` if exactly one of its arguments is truthy,
`false` otherwise.  Note that we are looking for a boolean
result instead of a truthy/falsy value as returned by `||`
and `&&`.

input: two arguments where each is invoked with a method that returns a boolean.
output: boolean

E: xor?(5.even?, 4.even?) --> false, true --> true
xor?(5.odd?, 4.odd?) --> true, false --> true
xor?(5.odd?, 4.even?) --> true, true --> false
xor?(5.even?, 4.odd?) --> false, false --> false

D: 

A: pass in two arguments with method invocations that will return a boolean
  if arg 1 outputs true and arg 2 outputs false
    - return true
  if arg 1 outputs false and arg 2 outputs true
    - return true
  else
    return false
=end

def xor?(arg1, arg2)
  if arg1 == true && arg2 == false
    true
  elsif arg1 == false && arg2 == true
    true
  else
    false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

#LS solutions
def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

def xor?(val1, val2)
  !!((value1 && !value2) || (value2 && !value1))
end

# Bradley Taylor's answer
def xor?(value_1, value_2)
  [value_1, value_2].count(true) == 1 ? true : false
end