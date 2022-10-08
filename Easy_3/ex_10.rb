=begin
Write a method that returns true if its integer argument 
is palindromic, otherwise false. 

Rules:
- palindromic number is same forward and backward

E:
34543 --> true
123210 --> false
22 --> true
5 --> true

D: how do you reverse an integer?
integer --> string --> integer

A: convert integer to string
check if reversed string is equivalent to string
=end

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?(005) == true