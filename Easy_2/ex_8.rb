# Write a program that asks the user to enter an interger greater than 0, then asks
# if the user wants to determine the sum or product of all numbers between 1 and
# the entered integer.
=begin
P - input: integer greater than 0
E - 
D - conditional
A - ASK user for an integer greater than 0
ASK user if they wants to calculate sum or product of all numbers (between 1 and the entered integer)
METHOD find sum of all numbers

METHOD finds product of all numbers
FOR user input 

=end

def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

