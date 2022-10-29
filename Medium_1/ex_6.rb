=begin
A stack is a list of values that grows and shrinks dynamically. In ruby, a stack is easily implemented as an Array that just uses the #push and #pop methods.

A stack-and-register programming language is a language that uses a stack of values. Each operation in the language operates on a register, which can be thought of as the current value. The register is not part of the stack. Operations that require two values pop the topmost item from the stack (that is, the operation removes the most recently pushed value from the stack), perform the operation using the popped value and the register value, and then store the result back in the register.

Consider a MULT operation in a stack-and-register language. It multiplies the stack value with the register value, removes the value from the stack, and then stores the result back in the register. Thus, if we start with a stack of 3 6 4 (where 4 is the topmost item in the stack), and a register value of 7, then the MULT operation will transform things to 3 6 on the stack (the 4 is removed), and the result of the multiplication, 28, is left in the register. If we do another MULT at this point, then the stack is transformed to 3, and the register is left with the value 168.

Write a method that implements a miniature stack-and-register-based programming language that has the following commands:

    n Place a value n in the "register". Do not modify the stack.
    PUSH Push the register value on to the stack. Leave the value in the register.
    ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
    SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
    MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
    DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
    MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
    POP Remove the topmost item from the stack and place in register
    PRINT Print the register value

All operations are integer operations (which is only important with DIV and MOD).

Programs will be supplied to your language method via a string passed in as an argument. Your program may assume that all programs are correct programs; that is, they won't do anything like try to pop a non-existent value from the stack, and they won't contain unknown tokens.

You should initialize the register to 0.

Goal: intake a string and use the words to modify the stack with integers and actions.
input: string
output: array

Rules:
n --> place value n in the "register". Do not modify the stack.
PUSH --> push the register value on to the stack (array)
ADD --> pops a value from the stack and adds it to the register value, storing the result in the register (array)
SUB --> pops a value from the stack and subtracts it from the register value
MULT --> pops a value from the stack and multiplies it by the register value
DIV --> pops a value from the stack and divides it into the register value
MOD --> pops a value from the stack and divides it into the register value
POP --> remove the topmost item from the stack and place in register
PRINT --> print the register value

E:
minilang('PRINT')
# 0 --> prints the default register value

minilang('5 PUSH 3 MULT PRINT')
# 15 --> 5 is pushed into the register then multiplied by 3 --> 3 * 5 = 15 --> and then printed

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
5 --> printed
3--> pushed into register and printed
ADD --> sums the array
PRINT --> prints the array

minilang('5 PUSH POP PRINT')
# 5 --> 5 is pushed into the register 

D:
stack = []
register = 0

{
  n: register += n.to_i
  push: stack << n,
  add: register += stack.pop
  sub: register -= stack.pop
  mult: register *= stack.pop
  div: register /= stack.pop
  mod: register %= stack.pop
  pop: register << stack.pop
  print: puts register
}

A:
- split the input string into an array of words ["5", "PUSH", "3", "MULT", "PRINT"]
- initialize a variable stack = []
- intialize a variable register = 0
- iterate over the list of commands
  - case when command is push
    - retrieve the command stored in the commands hash


  - case
=end

# def minilang(str)
#   commands_definitions = {
#   'n' => register += n.to_i
#   'PUSH' => stack << n,
#   'ADD' => register += stack.pop
#   'SUB' => register -= stack.pop
#   'MULT' => register *= stack.pop
#   'DIV' => register /= stack.pop
#   'MOD'=> register %= stack.pop
#   'POP' => register << stack.pop
#   'PRINT' => puts register
# }
 
#   command_list = str.split

#   stack = []
#   register = 0

#   command_list.each do |command|
#     case command
#     when command == "PUSH"
#       commands_definitions[command]
# end

def minilang(string)
  register = 0
  stack = []

  string.split.each do |command|
    register = command.to_i if command == command.to_i.to_s
    case command
    when 'PUSH' then stack.push(register)
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    when 'ADD' then register += stack.pop
    when 'SUB' then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV' then register /= stack.pop
    when 'MOD' then register %= stack.pop
    end
  end
end

#James Lafferty
def minilang(str)
  register = 0
  stack = []
  input = str.split

  input.each do |i|
    case
    when i == i.to_i.to_s then register = i.to_i
    when i == 'PUSH' then stack << register
    when i == 'ADD' then register += stack.pop
    when i == 'SUB' then register -= stack.pop
    when i == 'MULT' then register *= stack.pop
    when i == 'DIV' then register /= stack.pop
    when i == 'MOD' then register %= stack.pop
    when i == 'POP' then register = stack.pop
    when i == 'PRINT' then puts register
end

#Lee Hua
def minilang(str)
  stack = []
  register = 0
  str.split.each do |operator|
    case operator
    when 'PUSH'
      stack << register
    when 'PRINT'
      puts register
    when 'POP'
      register = stack.pop
    when 'ADD'
      register += stack.pop
    when 'SUB'
      register -= stack.pop
    when 'DIV'
      register /= stack.pop
    when 'MULT'
      register *= stack.pop
    when 'MOD'
      register %= stack.pop
    else
      register = operator.to_i
    end
  end
end

# Clarissa F
def minilang(program)
  stack = []
  register = 0

  commands = program.upcase.split
  commands.map! { |item| item.to_i.to_s == item ? item.to_i : }

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)