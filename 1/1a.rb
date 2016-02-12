input = File.read('input.txt')

ups = input.count('(')
downs = input.count(')')

puts "Santa is on floor: #{ups - downs}"