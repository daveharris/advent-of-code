lines = File.readlines('input.txt').map(&:strip)

sum = 0

lines.each_slice(3) do |group|
  first, second, third = group.map(&:chars)
  intersection = [first, second, third].reduce(:&).first

  if (intersection == intersection.downcase)
    alphabetical_position = intersection.ord - ('a'.ord - 1)
  else
    alphabetical_position = intersection.ord - ('A'.ord - 1) + ('z'.ord - ('a'.ord - 1))
  end

  sum += alphabetical_position

  # puts "#{intersection}\n"
end

puts sum
