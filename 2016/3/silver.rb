input = File.open('input.txt')
count = 0

input.each_line do |line|
  sides = line.scan(/\d+/).map(&:to_i).sort

  if sides[0] + sides[1] > sides[2]
    count +=1
  end
end

puts "The are #{count} possible triangles"