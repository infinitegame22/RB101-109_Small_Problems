=begin
Triangle Sides

A triangle is classified as follows:

equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length
To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

Goal: intake 3 integers that are lengths of a triangle and returns the associated triangle based on how the sides evaluate.
input: 3 integers
output: Symbol

Rules: 
- equilateral: all 3 sides are of equal length
- isosceles: 2 sides are of equal length, while the 3rd is different
- scalene: all 3 sides are of different length
- invalid: any that does not fall within the above three categories

E:
triangle(3, 3, 3) == :equilateral
--> all the same size
triangle(3, 3, 1.5) == :isosceles
--> 2 the same size
triangle(3, 4, 5) == :scalene
--> all 3 different sizes
triangle(0, 3, 3) == :invalid
--> one side is 0
triangle(3, 1, 1) == :invalid
--> the sume of the lengths of the two shortest sides must be greater than the length of the longest side

D: 
input: 3 integers
intermediate: array for int storage
output: Symbol

A: 
- initialize array object with three integers as elements
- return :invalid if any of the elements are equal to 0 or the maximum element of the array is less than the sum of the other two elements in the Array
- return equilateral if all of the input integers are the same
=end
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid