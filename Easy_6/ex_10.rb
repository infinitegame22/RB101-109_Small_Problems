=begin 

https://launchschool.com/exercises/d165e3c4

Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

*************Problem***************************
Goal: intake positive integer n and display a right triangle (right justified) with all three sides made up of n amount of stars.
initial input: integer
overall output: string of n lines

explicit requirements:
- hypotenuse reaches from lower left to upper right of triangle (right justified)
- all sides have amount of stars/lines
implicit requirements:

questions:

*************Examples and Test cases************
++restate all test cases given
++add edge cases, 0 and empty:
triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********


*************Data Structure********************
++the steps the data takes in between input 
++and output listed above
integer --> string
************Algorithm*************************
A. Main Method
  1. initalize a `count` variable and assign it to the integer 1
  2. until the count is less than or equal to the input integer
    a. output spaces for the number returned from subtracting count from input
    b. concatenate this string with the `*` multiplied by `count`
    c. increment the count by 1.

***********SCRATCHPAD********** 

=end

# bottom right
def triangle(n)
  count = 1
  while count <= n
    p  ' ' * (n-count)+ ('*' * (count))
    count +=1
  end
end

# top left
# def triangle(n)
#   count = 0
#   while count <= n
#     p ('*' * (n - count)) + ' ' * count
#     count +=1
#   end
# end

# bottom left

# def triangle(n)
#   count = 1
#   while count <= n
#     p ('*' * count) + ' ' * (n - count)
#     count +=1
#   end
# end

# # top right

# def triangle(n)
#   count = 0
#   while count <= n
#     p ('*' * (n - count)) + ' ' * count
#     count +=1
#   end
# end


triangle(5)

#     *
#    **
#   ***
#  ****
# *****

triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
