=begin
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

input: total number of switches, integer
output: array of which lights are still on 

E: 5 => round 1: every light is on
        round 2: 2 and 4 are off, 1, 3, 5 are on
        round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
        round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
        round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

Round 1, set them all to true: array = [t, t, t, t, t] => all on
Round 2, look at odd elements, switch off: array = [t, f, t, f, t]
Round 3, toggle off third element, switch off: array = [t, f, f, f, t]
Round 4, toggle off fourth element: array = [t, f, f, t, t]
Round 5, toggle fifth : array = [t, f, f, t, f]

A: n +1 size array
use an array with true and falses
loop over array, grab all indices with `true` and return that.
create a custom data type - prime example two pieces of info to keep track of repped by one item  Define class with number value that has true/false value.  They
have a number and boolean value for on/off.
An array of hashes and every hash has an id.  ONe key called id and the value is number.  Another key is on and true/false would be the value. More crude, hard code
the hash bracket.  
Own data type would be Dragon.on - value of the field in that instance.  OOP
Array that maintains the state (on/off) at each index
at every index we have to loop again, an innner loop.
start at index 1/round 2, look at every other number in the array.
Loop over entire array for every round - start at beg and go to end
  - based on the round it depends how many items we skip over
  - only look at every non-skipped number
Multiply index by i value that will skip elements for us.  

=end
def one_thousand_lights(n)
  lights_array = Array.new(n + 1).map {|el| true } # round 1
  lights_array[0] = false
  for round in 2..n # i is the number of elements skipping round 2 (skipping over every other)
     lights_array.each_with_index do |element, idx|
      if idx % round == 0 
        lights_array[idx] = !element
      end
    end
  end
  on_array = []
  lights_array.each_with_index do |element, index|
    if element && index != 0
      on_array << index
    end
  end
  on_array
end

p one_thousand_lights(5)
p one_thousand_lights(10)
p one_thousand_lights(36)