=begin
Write a method that determines the mean (average) of the 
three scores passed to it, and returns the letter value
associated with that grade.

Tested values are all between 0 and 100. There is no need
to check for negative values or values greater than 100.

input: three integers
output: character

Students get three grades; take the mean of these three numbers
and compare it against the table given.  Return the letter grade
associated with the number.

Requirements:
- Numerical Score  |  Letter  Grade
      90 <= score <= 100  'A'
      80 <= score < 90  'B'
      70 <= score < 80  'C'
      60 <= score < 70  'D'
      0 <= score < 60 'F'
- all values are between 0 and 100
- no negative values or values greater than 100

E: 95 + 90 + 93 = 278/3 = 92.67 which when compared to the 
table of grades returns "A"
50 + 50 + 95 = 195/3 = 65 which returns "D"

D: case statment

A: add the three integers together and assign the result to
a new variable average_score
compare the average_score to the span for each letter grade
return the correct character
  
=end

def get_grade(grade1, grade2, grade3)
  average_score = (grade1 + grade2 + grade3) / 3
  case average_score
  when 101..200
    'A+'
  when 90..100
    'A'
  when 80...90
    'B'
  when 70...80
    'C'
  when 60...70
    'D'
  else
    'F'
  end
end

# Adam's
def get_grade(score1, score2, score3)
  grade_scores = {
    100..   => 'A+',
    90..100 => 'A',
    80...90 => 'B',
    70...80 => 'C',
    60...70 => 'D',
    0...60  => 'F'
  }

  score = [score1, score2, score3].sum / 3

  grade_scores.each do |k, v|
    return v if k.include? score
  end
end

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"
p get_grade(99, 101, 103)