input = File.open('input.txt')
count = 0
rows = []

input.each_line.with_index do |line, index|
  rows << line.scan(/\d+/).map(&:to_i)
end

columns = rows.transpose

columns.each do |column|
  column.each_slice(3) do |sides|
    sides = sides.sort
    if sides[0] + sides[1] > sides[2]
      count += 1
    end
  end
end

puts "The are #{count} possible triangles"
