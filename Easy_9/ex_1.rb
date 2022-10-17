=begin
Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

=begin pedac

*************Problem***************************
Goal: intake an array with 2 or more lements that will produce a person's name
when joined.  intake a hash as well that contains 2 keys, `:title` and `occupation`
  with appropriate values.  Return a greeting that uses the person's full name
  and mentions the person's title and occupation
initial input: array, hash
overall output: string

explicit requirements:
- 
implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
array, hash --> string
*************Data Structure********************
++the steps the data takes in between input 
++and output listed above

************Algorithm*************************
A. Main Method
  1. initialize variable `full_name` to point to the result of joining the array into a single string
  2. intialize varialbe `job_name` to point to the concatentation of `:title` and `:occupation` into a string
  3. output greeting using `full_name` and `job_name`

***********SCRATCHPAD********** 

=end
def greetings(array, hash)
  full_name = array.join(' ')
  job_name = hsh.values.join(' ')
  "=> Hello, #{full_name}! Nice to have a #{job_name} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.