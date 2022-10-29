=begin
A triangle is classified as follows:

    right One angle of the triangle is a right angle (90 degrees)
    acute All 3 angles of the triangle are less than 90 degrees
    obtuse One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

goal: intake three integers that are sides of a triangle and evaluate which type of triangle these three integers would make based on the integers evaluated as angles summing upto 180 degrees.

input: 3 integers
output: symbol (type of triangle or invalid)

Rules:
- acute: All 3 angles of the triangle are less than 90 degrees
- right: - One angle of the triangle is a right angle (90 degrees)
- obtuse: One angle is greater than 90 degrees. 
- invalid: none of the 3 above can be made from the integer angles
- assume integer valued angles so no floating point errors
- arguments are specified in degrees
- the sum of the angles must be exactly 180 degrees and all angles must be greater than 0 , otherwise invalid

E: 
triangle(60, 70, 50) == :acute
all less than 90 == acute
triangle(30, 90, 60) == :right
one angle is 90 --> right
triangle(120, 50, 10) == :obtuse
one is greater than 90 --> obtuse
triangle(0, 90, 90) == :invalid
one is 0 --> invalid
triangle(50, 50, 50) == :invalid
sum is not equal to 180 --> invalid

D:
input: 3 integers
intermediate: array of the integers for summing purposes
output: symbol (type of triangle or invalid)

A:
input 3 integers --> angle1, angle2, angle3
- store the 3 integers in an array called `angle_arr` [30, 90, 60]
- return :invalid if the sum of angle_arr does not equal 180 or any angle == 0
- return :right if any of the angles are equivalent to 90 --> :right
- return :obtuse if any of the angles are greater than 90
- otherwise return :acute 
=end

def triangle(angle1, angle2, angle3)
  angle_arr = [angle1, angle2, angle3]

  return :invalid if angle_arr.sum != 180 || angle_arr.any? {|el| el == 0}

  return :right if angle_arr.any? {|el| el == 90 }

  return :obtuse if angle_arr.any? { |el| el > 90 }

  return :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid