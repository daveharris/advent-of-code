lines = File.readlines('input.txt').map(&:strip)

sum = 0

lines.each do |line|
  first, second = line.chars.partition.with_index{|_, i| i < line.length/2 }
  intersection = first.intersection(second).first

  if (intersection == intersection.downcase)
    alphabetical_position = intersection.ord - ('a'.ord - 1)
  else
    alphabetical_position = intersection.ord - ('A'.ord - 1) + ('z'.ord - ('a'.ord - 1))
  end

  sum += alphabetical_position
end

puts sum
