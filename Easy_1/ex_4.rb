vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  count_occurrences = {}

  array.uniq.each do |element|
    occurences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

def count_occurrences
  occurrences = {}

  array.uniq.each do |element, count|
    puts "#{element} => #{count}"
  end
end

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element, count|
    puts "#{element} => #{count}"
  end
end

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

def count_occurrences(array)
  occurrences - {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

#As we iterate over each unique element, we create
#a new key-value pair in occurrences, with the key
#as the element's value. To count each occurrence, we use
#Array#count to count the number of elements with the same value.
#Lastly, to print the desire output, we call #each on the newly 
#created occurrences, which lets us pass the keys and values as
#block parameters. Then inside of the block we invoke #puts 
# to print each key-value pair.

count_occurrences(vehicles)