lines = File.readlines('input.txt').map(&:strip)

count = 0

lines.each do |line|
  first, second = line.split(',').map do |assignment|
    Range.new(*assignment.split('-').map(&:to_i))
  end

  if (first.to_a & second.to_a).length > 0
    count += 1
  end
end

puts count
