lines = File.readlines('input.txt').map(&:strip)
sum = 0

lines.each do |game|
  sum += {'red': 12, 'green': 13, 'blue': 14}.map do |colour, max|
    game.scan(%r{\d+ #{colour}}).map(&:to_i).max
  end.inject(:*)
end

puts sum
